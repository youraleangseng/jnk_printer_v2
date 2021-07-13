import 'dart:io';
import 'dart:typed_data';
import 'package:blue_thermal_printer/blue_thermal_printer.dart' as themal;
import 'package:flutter_blue/flutter_blue.dart' as fblue;
import 'package:flutter_blue/gen/flutterblue.pb.dart' as proto;
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';
import 'package:pos_printer_manager/enums/connection_response.dart';
import 'package:pos_printer_manager/models/bluetooth_printer.dart';
import 'package:pos_printer_manager/models/pos_printer.dart';
import 'package:pos_printer_manager/receipt/receipt.dart';
import 'package:webcontent_converter/webcontent_converter.dart';
import 'bluetooth_service.dart';
import 'printer_manager.dart';
import 'package:image/image.dart' as img;

/// Bluetooth Printer
class BluetoothPrinterManager extends PrinterManager {
  Generator generator;
  themal.BlueThermalPrinter bluetooth = themal.BlueThermalPrinter.instance;
  fblue.FlutterBlue flutterBlue = fblue.FlutterBlue.instance;
  fblue.BluetoothDevice fbdevice;

  BluetoothPrinterManager(
    POSPrinter printer,
    PaperSize paperSize,
    CapabilityProfile profile, {
    int spaceBetweenRows = 5,
    int port: 9100,
  }) {
    assert(printer != null);
    super.printer = printer;
    super.address = printer.address;
    super.paperSize = paperSize;
    super.profile = profile;
    super.spaceBetweenRows = spaceBetweenRows;
    super.port = port;
    generator =
        Generator(paperSize, profile, spaceBetweenRows: spaceBetweenRows);
  }

  /// [connect] let you connect to a bluetooth printer
  Future<ConnectionResponse> connect(
      {Duration timeout: const Duration(seconds: 5)}) async {
    try {
      if (Platform.isIOS) {
        fbdevice = fblue.BluetoothDevice.fromProto(proto.BluetoothDevice(
            name: printer.name,
            remoteId: printer.address,
            type: proto.BluetoothDevice_Type.valueOf(printer.type)));
        var connected = await flutterBlue.connectedDevices;
        var index = connected?.indexWhere((e) => e.id == fbdevice.id);
        if (index < 0) await fbdevice.connect();
      } else if (Platform.isAndroid) {
        var device = themal.BluetoothDevice(printer.name, printer.address);
        await bluetooth.connect(device);
      }

      this.isConnected = true;
      this.printer.connected = true;
      return Future<ConnectionResponse>.value(ConnectionResponse.success);
    } catch (e) {
      this.isConnected = false;
      this.printer.connected = false;
      return Future<ConnectionResponse>.value(ConnectionResponse.timeout);
    }
  }

  /// [discover] let you explore all bluetooth printer nearby your device
  static Future<List<BluetoothPrinter>> discover() async {
    var results = await BluetoothService.findBluetoothDevice();
    return [
      ...results
          .map((e) => BluetoothPrinter(
                id: e.address,
                name: e.name,
                address: e.address,
                type: e.type,
              ))
          .toList()
    ];
  }

  /// This method only for print text
  /// value and styling inside model [ReceiptSectionText].
  /// [feedCount] to create more space after printing process done
  /// [useCut] to cut printing process
  Future<void> printReceiptText(
    ReceiptSectionText receiptSectionText, {
    int feedCount = 0,
    bool useCut = false,
  }) async {
    final Uint8List bytes = await WebcontentConverter.contentToImage(
        content: receiptSectionText.content);
    final List<int> byteBuffer = await _getBytes(
      bytes,
      paperSize: PaperSize.mm58,
      feedCount: feedCount,
      useCut: useCut,
    );
    writeBytes(byteBuffer, isDisconnect: false);
  }

  /// This method to convert byte from [data] into as image canvas.
  /// It will automatically set width and height based [paperSize].
  /// [customWidth] to print image with specific width
  /// [feedCount] to generate byte buffer as feed in receipt.
  /// [useCut] to cut of receipt layout as byte buffer.
  Future<List<int>> _getBytes(
    List<int> data, {
    PaperSize paperSize = PaperSize.mm58,
    int customWidth = 0,
    int feedCount = 0,
    bool useCut = false,
  }) async {
    List<int> bytes = <int>[];
    final CapabilityProfile profile = await CapabilityProfile.load();
    final Generator generator = Generator(PaperSize.mm58, profile);
    final img.Image _resize = img.copyResize(
      img.decodeImage(data),
      width: customWidth > 0 ? customWidth : paperSize.width,
    );
    bytes += generator.imageRaster(_resize);
    if (feedCount > 0) {
      bytes += generator.feed(feedCount);
    }
    if (useCut) {
      bytes += generator.cut();
    }
    return bytes;
  }

  /// [writeBytes] let you write raw list int data into socket
  writeBytes(List<int> data, {bool isDisconnect: true}) async {
    try {
      if (!isConnected) {
        await connect();
      }
      if (Platform.isAndroid) {
        bluetooth.writeBytes(Uint8List.fromList(data));
        if (isDisconnect) {
          await disconnect();
        }
      } else if (Platform.isIOS) {
        // var services = (await fbdevice.discoverServices());
        // var service = services.firstWhere((e) => e.isPrimary);
        // var charactor =
        //     service.characteristics.firstWhere((e) => e.properties.write);
        // await charactor?.write(data, withoutResponse: true);
        fblue.BluetoothCharacteristic printerService;
        List<fblue.BluetoothService> services =
            (await fbdevice.discoverServices());
        for (var service in services) {
          if (service.isPrimary) {
            for (var character in service.characteristics) {
              if (character.properties.write) {
                printerService = character;
              }
            }
          }
        }
        await printerService?.write(data);
        // final len = data.length;
        // List<List<int>> chunks = [];
        // for (var i = 0; i < len; i += 100) {
        //   var end = (i + 100 < len) ? i + 100 : len;
        //   chunks.add(data.sublist(i, end));
        // }
        // for (var i = 0; i < chunks.length; i++) {
        //   await printerService?.write(chunks[i]);
        // }
      }
    } catch (e) {
      print("Error : $e");
    }
  }

  /// [timeout]: milliseconds to wait after closing the socket
  Future<ConnectionResponse> disconnect({Duration timeout}) async {
    if (Platform.isAndroid) {
      await bluetooth?.disconnect();
      this.isConnected = false;
    } else if (Platform.isIOS) {
      await fbdevice.disconnect();
      this.isConnected = false;
    }

    if (timeout != null) {
      await Future.delayed(timeout, () => null);
    }
    return ConnectionResponse.success;
  }
}
