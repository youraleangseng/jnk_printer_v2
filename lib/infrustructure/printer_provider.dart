import 'dart:convert';
import 'dart:typed_data';

import 'package:blue_print_pos/blue_print_pos.dart';
import 'package:blue_print_pos/models/blue_device.dart';
import 'package:blue_print_pos/models/connection_status.dart';
import 'package:blue_print_pos/receipt/receipt.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import 'package:logger/logger.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_printer_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';
import 'package:printer/resources/resources.dart';

class PrinterProvider extends IPrinterProvider {
  @override
  BluePrintPos get bluetooth => BluePrintPos.instance;

  @override
  Future<Either<Failure, List<BlueDevice>>> getNearbyDevices() async {
    Logger().i('Scan started');
    try {
      final List<BlueDevice> devices = await bluetooth.scan();
      Logger().i('Scan ended');
      Logger().i(devices.map((e) => e.name).join(','));

      // devices.first.

      return right(devices);
    } on PlatformException {
      return left(const Failure("Platform exception occured"));
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<bool> isConnected() async {
    final bool connected = bluetooth.isConnected;
    return connected;
  }

  @override
  Future<Option<Failure>> connectDevice(BlueDevice device) async {
    try {
      final bool _isConnected = await isConnected();
      if (!_isConnected) {
        final ConnectionStatus status = await bluetooth
            .connect(device)
            .then<ConnectionStatus>((value) => value);

        if (status != ConnectionStatus.connected) {
          return some(Failure(status.toString().split('.').last));
        } else {
          return none();
        }
      }
      return none();
    } on PlatformException catch (e) {
      return some(Failure(e.toString()));
    } catch (e) {
      return some(Failure(e.toString()));
    }
  }

  @override
  Future<Option<Failure>> print(PrintDoc doc) async {
    if (bluetooth.isConnected) {
      final ByteData logoBytes = await rootBundle.load(
        Assets.motoBw,
      );

      /// Example for Print Text
      final ReceiptSectionText receiptText = ReceiptSectionText();
      receiptText.addImage(
        base64.encode(Uint8List.view(logoBytes.buffer)),
        width: 150,
      );
      receiptText.addSpacer();
      receiptText.addText(
        'Joonak Printer',
        style: ReceiptTextStyleType.bold,
      );

      receiptText.addSpacer(useDashed: true);
      receiptText.addLeftRightText(
        'Phone',
        doc.phone,
      );
      receiptText.addLeftRightText(
        'Name',
        doc.name,
      );
      receiptText.addLeftRightText(
        'Location',
        doc.location,
      );
      receiptText.addSpacer(useDashed: true);

      receiptText.addLeftRightText(
        'Price',
        doc.price.toString(),
      );
      receiptText.addLeftRightText(
        'Delivery fee',
        doc.deliveryFee.toString(),
      );
      receiptText.addLeftRightText(
        'Total',
        doc.total.toString(),
      );
      receiptText.addSpacer(count: 2);

      await bluetooth.printReceiptText(receiptText);
      return none();
    } else {
      return some(const Failure('You are not connected'));
    }
  }

  @override
  void disconnect() {
    bluetooth.disconnect();
  }
}
