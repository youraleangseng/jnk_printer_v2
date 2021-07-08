// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'storage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StorageEventTearOff {
  const _$StorageEventTearOff();

  LoadData loadData() {
    return const LoadData();
  }

  AddDocument addDocument(PrintDoc doc) {
    return AddDocument(
      doc,
    );
  }
}

/// @nodoc
const $StorageEvent = _$StorageEventTearOff();

/// @nodoc
mixin _$StorageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(PrintDoc doc) addDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(PrintDoc doc)? addDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(AddDocument value) addDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(AddDocument value)? addDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageEventCopyWith<$Res> {
  factory $StorageEventCopyWith(
          StorageEvent value, $Res Function(StorageEvent) then) =
      _$StorageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StorageEventCopyWithImpl<$Res> implements $StorageEventCopyWith<$Res> {
  _$StorageEventCopyWithImpl(this._value, this._then);

  final StorageEvent _value;
  // ignore: unused_field
  final $Res Function(StorageEvent) _then;
}

/// @nodoc
abstract class $LoadDataCopyWith<$Res> {
  factory $LoadDataCopyWith(LoadData value, $Res Function(LoadData) then) =
      _$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadDataCopyWithImpl<$Res> extends _$StorageEventCopyWithImpl<$Res>
    implements $LoadDataCopyWith<$Res> {
  _$LoadDataCopyWithImpl(LoadData _value, $Res Function(LoadData) _then)
      : super(_value, (v) => _then(v as LoadData));

  @override
  LoadData get _value => super._value as LoadData;
}

/// @nodoc

class _$LoadData implements LoadData {
  const _$LoadData();

  @override
  String toString() {
    return 'StorageEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(PrintDoc doc) addDocument,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(PrintDoc doc)? addDocument,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(AddDocument value) addDocument,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(AddDocument value)? addDocument,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadData implements StorageEvent {
  const factory LoadData() = _$LoadData;
}

/// @nodoc
abstract class $AddDocumentCopyWith<$Res> {
  factory $AddDocumentCopyWith(
          AddDocument value, $Res Function(AddDocument) then) =
      _$AddDocumentCopyWithImpl<$Res>;
  $Res call({PrintDoc doc});

  $PrintDocCopyWith<$Res> get doc;
}

/// @nodoc
class _$AddDocumentCopyWithImpl<$Res> extends _$StorageEventCopyWithImpl<$Res>
    implements $AddDocumentCopyWith<$Res> {
  _$AddDocumentCopyWithImpl(
      AddDocument _value, $Res Function(AddDocument) _then)
      : super(_value, (v) => _then(v as AddDocument));

  @override
  AddDocument get _value => super._value as AddDocument;

  @override
  $Res call({
    Object? doc = freezed,
  }) {
    return _then(AddDocument(
      doc == freezed
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as PrintDoc,
    ));
  }

  @override
  $PrintDocCopyWith<$Res> get doc {
    return $PrintDocCopyWith<$Res>(_value.doc, (value) {
      return _then(_value.copyWith(doc: value));
    });
  }
}

/// @nodoc

class _$AddDocument implements AddDocument {
  const _$AddDocument(this.doc);

  @override
  final PrintDoc doc;

  @override
  String toString() {
    return 'StorageEvent.addDocument(doc: $doc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddDocument &&
            (identical(other.doc, doc) ||
                const DeepCollectionEquality().equals(other.doc, doc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(doc);

  @JsonKey(ignore: true)
  @override
  $AddDocumentCopyWith<AddDocument> get copyWith =>
      _$AddDocumentCopyWithImpl<AddDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(PrintDoc doc) addDocument,
  }) {
    return addDocument(doc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(PrintDoc doc)? addDocument,
    required TResult orElse(),
  }) {
    if (addDocument != null) {
      return addDocument(doc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(AddDocument value) addDocument,
  }) {
    return addDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(AddDocument value)? addDocument,
    required TResult orElse(),
  }) {
    if (addDocument != null) {
      return addDocument(this);
    }
    return orElse();
  }
}

abstract class AddDocument implements StorageEvent {
  const factory AddDocument(PrintDoc doc) = _$AddDocument;

  PrintDoc get doc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddDocumentCopyWith<AddDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StorageStateTearOff {
  const _$StorageStateTearOff();

  _StorageState call(List<PrintDoc> docs, bool isLoading, String message) {
    return _StorageState(
      docs,
      isLoading,
      message,
    );
  }
}

/// @nodoc
const $StorageState = _$StorageStateTearOff();

/// @nodoc
mixin _$StorageState {
  List<PrintDoc> get docs =>
      throw _privateConstructorUsedError; // ignore: avoid_positional_boolean_parameters
  bool get isLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageStateCopyWith<StorageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageStateCopyWith<$Res> {
  factory $StorageStateCopyWith(
          StorageState value, $Res Function(StorageState) then) =
      _$StorageStateCopyWithImpl<$Res>;
  $Res call({List<PrintDoc> docs, bool isLoading, String message});
}

/// @nodoc
class _$StorageStateCopyWithImpl<$Res> implements $StorageStateCopyWith<$Res> {
  _$StorageStateCopyWithImpl(this._value, this._then);

  final StorageState _value;
  // ignore: unused_field
  final $Res Function(StorageState) _then;

  @override
  $Res call({
    Object? docs = freezed,
    Object? isLoading = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<PrintDoc>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StorageStateCopyWith<$Res>
    implements $StorageStateCopyWith<$Res> {
  factory _$StorageStateCopyWith(
          _StorageState value, $Res Function(_StorageState) then) =
      __$StorageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PrintDoc> docs, bool isLoading, String message});
}

/// @nodoc
class __$StorageStateCopyWithImpl<$Res> extends _$StorageStateCopyWithImpl<$Res>
    implements _$StorageStateCopyWith<$Res> {
  __$StorageStateCopyWithImpl(
      _StorageState _value, $Res Function(_StorageState) _then)
      : super(_value, (v) => _then(v as _StorageState));

  @override
  _StorageState get _value => super._value as _StorageState;

  @override
  $Res call({
    Object? docs = freezed,
    Object? isLoading = freezed,
    Object? message = freezed,
  }) {
    return _then(_StorageState(
      docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<PrintDoc>,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StorageState implements _StorageState {
  const _$_StorageState(this.docs, this.isLoading, this.message);

  @override
  final List<PrintDoc> docs;
  @override // ignore: avoid_positional_boolean_parameters
  final bool isLoading;
  @override
  final String message;

  @override
  String toString() {
    return 'StorageState(docs: $docs, isLoading: $isLoading, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StorageState &&
            (identical(other.docs, docs) ||
                const DeepCollectionEquality().equals(other.docs, docs)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docs) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$StorageStateCopyWith<_StorageState> get copyWith =>
      __$StorageStateCopyWithImpl<_StorageState>(this, _$identity);
}

abstract class _StorageState implements StorageState {
  const factory _StorageState(
      List<PrintDoc> docs, bool isLoading, String message) = _$_StorageState;

  @override
  List<PrintDoc> get docs => throw _privateConstructorUsedError;
  @override // ignore: avoid_positional_boolean_parameters
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StorageStateCopyWith<_StorageState> get copyWith =>
      throw _privateConstructorUsedError;
}
