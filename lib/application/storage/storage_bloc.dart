import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_storage_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';

part 'storage_event.dart';
part 'storage_state.dart';
part 'storage_bloc.freezed.dart';

class StorageBloc extends Bloc<StorageEvent, StorageState> {
  final IStorageProvider storageProvider;
  StorageBloc(this.storageProvider) : super(StorageState.initial());

  @override
  Stream<StorageState> mapEventToState(
    StorageEvent event,
  ) async* {
    yield* event.map(loadData: (e) async* {
      // yield state.copyWith(isLoading: true);
      final Either<Failure, List<PrintDoc>> data =
          await storageProvider.loadData();

      // yield state.copyWith(isLoading: false);
      yield data.fold((l) => state.copyWith(message: l.error, isLoading: false),
          (r) => state.copyWith(docs: r, isLoading: false));
    }, addDocument: (e) async* {
      yield state.copyWith(isLoading: true);
      final Either<Failure, Unit> data = await storageProvider.addData(e.doc);

      yield data.fold((l) => state.copyWith(message: l.error, isLoading: false),
          (r) => state.copyWith(isLoading: false));
    });
  }
}
