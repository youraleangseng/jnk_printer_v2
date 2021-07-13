import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:pos_printer_manager/pos_printer_manager.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_printer_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';

part 'printer_event.dart';
part 'printer_state.dart';
part 'printer_bloc.freezed.dart';

class PrinterBloc extends Bloc<PrinterEvent, PrinterState> {
  final IPrinterProvider printerProvider;
  PrinterBloc(this.printerProvider) : super(PrinterState.initial());

  @override
  Stream<PrinterState> mapEventToState(
    PrinterEvent event,
  ) async* {
    yield* event.map(checkConnection: (CheckConnection value) async* {
      final bool connected = await printerProvider.isConnected();
      yield state.copyWith(isConnected: connected);
    }, connect: (ConnectDevice value) async* {
      yield state.copyWith(isLoading: true, error: '');

      final Option<Failure> response =
          await printerProvider.connectDevice(value.device);

      yield response.fold(() => state.copyWith(isLoading: false),
          (a) => state.copyWith(error: a.error, isLoading: false));
      add(const CheckConnection());
    }, print: (PrintDocument value) async* {
      yield state.copyWith(isLoading: true, error: '');

      final Option<Failure> response = await printerProvider.print(value.doc);

      yield response.fold(() => state.copyWith(isLoading: false),
          (a) => state.copyWith(error: a.error, isLoading: false));
    }, scan: (ScanDevices value) async* {
      yield state.copyWith(isLoading: true, error: '');
      final Either<Failure, List<BluetoothPrinter>> response =
          await printerProvider.getNearbyDevices();

      yield response
          .fold((l) => state.copyWith(error: l.error, isLoading: false), (r) {
        return state.copyWith(nearbyDevices: r, isLoading: false);
      });
    });
  }
}
