part of 'storage_bloc.dart';

@freezed
class StorageEvent with _$StorageEvent {
  const factory StorageEvent.loadData() = LoadData;
  const factory StorageEvent.addDocument(PrintDoc doc) = AddDocument;
}
