part of 'printer_bloc.dart';

@freezed
class PrinterState with _$PrinterState {
  const factory PrinterState(
    // ignore: avoid_positional_boolean_parameters
    bool isLoading,
    bool isConnected,
    String error,
    List<BlueDevice> nearbyDevices,
  ) = _PrinterState;

  factory PrinterState.initial() => const _PrinterState(false, false, '', []);
}
