part of 'printer_bloc.dart';

@freezed
class PrinterEvent with _$PrinterEvent {
  const factory PrinterEvent.scan() = ScanDevices;
  const factory PrinterEvent.connect(BluetoothPrinter device) = ConnectDevice;
  const factory PrinterEvent.print(PrintDoc doc) = PrintDocument;
  const factory PrinterEvent.checkConnection() = CheckConnection;
}
