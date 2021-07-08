import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:dartz/dartz.dart';
import 'package:printer/domain/print_doc/print_doc.dart';


import 'failure/failure.dart';

abstract class IBluePrinterProvider {
  dynamic get bluetooth;
  Future<bool> isConnected();
  void disconnect();
  Future<Either<Failure, List<BluetoothDevice>>> getNearbyDevices();
  Future<Option<Failure>> connectDevice(BluetoothDevice device);
  Future<Option<Failure>> print(PrintDoc doc);
}
