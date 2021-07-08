part of 'storage_bloc.dart';

@freezed
class StorageState with _$StorageState {
  const factory StorageState(
      List<PrintDoc> docs,
      // ignore: avoid_positional_boolean_parameters
      bool isLoading,
      String message) = _StorageState;

  factory StorageState.initial() => const _StorageState([], false, '');
}
