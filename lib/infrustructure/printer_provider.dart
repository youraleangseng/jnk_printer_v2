import 'package:logger/logger.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:pos_printer_manager/pos_printer_manager.dart';
import 'package:printer/domain/failure/failure.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:printer/domain/i_printer_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';
import 'package:printer/infrustructure/service.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:webcontent_converter/webcontent_converter.dart';

import 'demo.dart';

class PrinterProvider extends IPrinterProvider {
  @override
  BluetoothPrinterManager? bluetooth;

  @override
  Future<Option<Failure>> connectDevice(BluetoothPrinter device) async {
    try {
      final PaperSize paperSize = PaperSize.mm58;
      final CapabilityProfile profile = await CapabilityProfile.load();
      bluetooth = BluetoothPrinterManager(device, paperSize, profile);
      await bluetooth?.connect();
      Logger().i(" -==== connected =====- ");
      device.connected = true;
      return none();
    } catch (e) {
      return some(Failure(e.toString()));
    }
  }

  bool connected = false;

  @override
  void disconnect() {
    bluetooth!.disconnect();
  }

  @override
  Future<Either<Failure, List<BluetoothPrinter>>> getNearbyDevices() async {
    try {
      List<BluetoothPrinter> printers =
          await BluetoothPrinterManager.discover();

      return right(printers);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<bool> isConnected() async {
    if (bluetooth == null || bluetooth!.isConnected == false) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<Option<Failure>> print(PrintDoc doc) async {
    try {
      bool connected = await isConnected();
      if (connected) {
        final content = Demo.getShortReceiptContent();
        var bytes = await WebcontentConverter.contentToImage(content: content);
        ESCPrinterService service =
            ESCPrinterService(bytes, bluetooth!.profile, PaperSize.mm58);
        var data = await service.getBytes();
        Logger().i("isConnected $connected");
        bluetooth!.writeBytes(data, isDisconnect: false);

        return none();
      } else {
        return some(Failure('You are not connected'));
      }
    } catch (e) {
      return some(Failure(e.toString()));
    }
  }
}
