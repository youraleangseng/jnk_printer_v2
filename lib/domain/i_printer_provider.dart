import 'package:dartz/dartz.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:pos_printer_manager/pos_printer_manager.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:pos_printer_manager/services/bluetooth_printer_manager.dart';
import 'package:printer/domain/print_doc/print_doc.dart';

import 'failure/failure.dart';

abstract class IPrinterProvider {
  BluetoothPrinterManager? get bluetooth;
  set bluetooth(BluetoothPrinterManager? bluetooth);
  Future<bool> isConnected();
  Future<Either<Failure, List<BluetoothPrinter>>> getNearbyDevices();
  Future<Option<Failure>> connectDevice(BluetoothPrinter device);
  Future<Option<Failure>> print(PrintDoc doc);
  void disconnect();
}
