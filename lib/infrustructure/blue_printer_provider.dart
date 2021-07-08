import 'dart:io';
import 'dart:typed_data';

import 'package:blue_print_pos/models/blue_device.dart';
import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_printer_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';
import 'package:printer/resources/resources.dart';

class BluePrinterProvider extends IPrinterProvider {
  @override
  BlueThermalPrinter get bluetooth => BlueThermalPrinter.instance;

  @override
  Future<Either<Failure, List<BlueDevice>>> getNearbyDevices() async {
    Logger().i('Scan started');
    try {
      final List<BluetoothDevice> devices = await bluetooth.getBondedDevices();
      Logger().i('Scan ended');
      Logger().i(devices.map((e) => e.name).join(','));

      // devices.first.
      final List<BlueDevice> bluedevices = List<BlueDevice>.from(devices.map(
          (e) => BlueDevice(
              name: e.name!,
              address: e.address!,
              connected: e.connected,
              type: e.type)));
      return right(bluedevices);
    } on PlatformException {
      return left(const Failure("Platform exception occured"));
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<bool> isConnected() async {
    final bool connected = await bluetooth.isConnected ?? false;
    return connected;
  }

  @override
  Future<Option<Failure>> connectDevice(BlueDevice device) async {
    try {
      final bool _isConnected = await isConnected();
      if (!_isConnected) {
        await bluetooth.connect(BluetoothDevice(device.name, device.address));

        return none();
      }
      return none();
    } on PlatformException catch (_) {
      return some(const Failure('Platform exception occured'));
    } catch (e) {
      return some(Failure(e.toString()));
    }
  }

  @override
  Future<Option<Failure>> print(PrintDoc doc) async {
    if (await bluetooth.isConnected ?? false) {
      final ByteData logoBytes = await rootBundle.load(
        Assets.motoBw,
      );
      final String dir = (await getApplicationDocumentsDirectory()).path;
      writeToFile(logoBytes, '$dir/logo.png');

      /// Example for Print Text
      bluetooth.printImage('$dir/logo.png'); //path of your image/logo
      bluetooth.printNewLine();

      bluetooth.printCustom('Joonak Printer', 3, 1);

      bluetooth.printNewLine();
      bluetooth.printLeftRight('Phone', doc.phone, 0);
      bluetooth.printLeftRight('Name', doc.name, 0);
      bluetooth.printLeftRight('Location', doc.location, 0);
      bluetooth.printNewLine();

      bluetooth.printLeftRight('Price', doc.price.toString(), 0);
      bluetooth.printLeftRight('Delivery fee', doc.deliveryFee.toString(), 0);
      bluetooth.printLeftRight('Total', doc.total.toString(), 0);
      bluetooth.printNewLine();

      bluetooth.paperCut();

      return none();
    } else {
      return some(const Failure('You are not connected'));
    }
  }

  Future<void> writeToFile(ByteData data, String path) {
    final buffer = data.buffer;
    return File(path).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }

  @override
  void disconnect() {
    bluetooth.disconnect();
  }
}
