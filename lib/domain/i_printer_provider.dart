import 'package:blue_print_pos/models/blue_device.dart';
import 'package:dartz/dartz.dart';
import 'package:printer/domain/print_doc/print_doc.dart';


import 'failure/failure.dart';

abstract class IPrinterProvider {
  dynamic get bluetooth;
  Future<bool> isConnected();
  Future<Either<Failure, List<BlueDevice>>> getNearbyDevices();
  Future<Option<Failure>> connectDevice(BlueDevice device);
  Future<Option<Failure>> print(PrintDoc doc);
  void disconnect();
}
