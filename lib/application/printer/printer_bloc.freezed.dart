// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'printer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrinterEventTearOff {
  const _$PrinterEventTearOff();

  ScanDevices scan() {
    return const ScanDevices();
  }

  ConnectDevice connect(BluetoothPrinter device) {
    return ConnectDevice(
      device,
    );
  }

  PrintDocument print(PrintDoc doc) {
    return PrintDocument(
      doc,
    );
  }

  CheckConnection checkConnection() {
    return const CheckConnection();
  }
}

/// @nodoc
const $PrinterEvent = _$PrinterEventTearOff();

/// @nodoc
mixin _$PrinterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function(BluetoothPrinter device) connect,
    required TResult Function(PrintDoc doc) print,
    required TResult Function() checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function(BluetoothPrinter device)? connect,
    TResult Function(PrintDoc doc)? print,
    TResult Function()? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanDevices value) scan,
    required TResult Function(ConnectDevice value) connect,
    required TResult Function(PrintDocument value) print,
    required TResult Function(CheckConnection value) checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanDevices value)? scan,
    TResult Function(ConnectDevice value)? connect,
    TResult Function(PrintDocument value)? print,
    TResult Function(CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterEventCopyWith<$Res> {
  factory $PrinterEventCopyWith(
          PrinterEvent value, $Res Function(PrinterEvent) then) =
      _$PrinterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PrinterEventCopyWithImpl<$Res> implements $PrinterEventCopyWith<$Res> {
  _$PrinterEventCopyWithImpl(this._value, this._then);

  final PrinterEvent _value;
  // ignore: unused_field
  final $Res Function(PrinterEvent) _then;
}

/// @nodoc
abstract class $ScanDevicesCopyWith<$Res> {
  factory $ScanDevicesCopyWith(
          ScanDevices value, $Res Function(ScanDevices) then) =
      _$ScanDevicesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScanDevicesCopyWithImpl<$Res> extends _$PrinterEventCopyWithImpl<$Res>
    implements $ScanDevicesCopyWith<$Res> {
  _$ScanDevicesCopyWithImpl(
      ScanDevices _value, $Res Function(ScanDevices) _then)
      : super(_value, (v) => _then(v as ScanDevices));

  @override
  ScanDevices get _value => super._value as ScanDevices;
}

/// @nodoc

class _$ScanDevices implements ScanDevices {
  const _$ScanDevices();

  @override
  String toString() {
    return 'PrinterEvent.scan()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScanDevices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function(BluetoothPrinter device) connect,
    required TResult Function(PrintDoc doc) print,
    required TResult Function() checkConnection,
  }) {
    return scan();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function(BluetoothPrinter device)? connect,
    TResult Function(PrintDoc doc)? print,
    TResult Function()? checkConnection,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanDevices value) scan,
    required TResult Function(ConnectDevice value) connect,
    required TResult Function(PrintDocument value) print,
    required TResult Function(CheckConnection value) checkConnection,
  }) {
    return scan(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanDevices value)? scan,
    TResult Function(ConnectDevice value)? connect,
    TResult Function(PrintDocument value)? print,
    TResult Function(CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan(this);
    }
    return orElse();
  }
}

abstract class ScanDevices implements PrinterEvent {
  const factory ScanDevices() = _$ScanDevices;
}

/// @nodoc
abstract class $ConnectDeviceCopyWith<$Res> {
  factory $ConnectDeviceCopyWith(
          ConnectDevice value, $Res Function(ConnectDevice) then) =
      _$ConnectDeviceCopyWithImpl<$Res>;
  $Res call({BluetoothPrinter device});
}

/// @nodoc
class _$ConnectDeviceCopyWithImpl<$Res> extends _$PrinterEventCopyWithImpl<$Res>
    implements $ConnectDeviceCopyWith<$Res> {
  _$ConnectDeviceCopyWithImpl(
      ConnectDevice _value, $Res Function(ConnectDevice) _then)
      : super(_value, (v) => _then(v as ConnectDevice));

  @override
  ConnectDevice get _value => super._value as ConnectDevice;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(ConnectDevice(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothPrinter,
    ));
  }
}

/// @nodoc

class _$ConnectDevice implements ConnectDevice {
  const _$ConnectDevice(this.device);

  @override
  final BluetoothPrinter device;

  @override
  String toString() {
    return 'PrinterEvent.connect(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectDevice &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $ConnectDeviceCopyWith<ConnectDevice> get copyWith =>
      _$ConnectDeviceCopyWithImpl<ConnectDevice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function(BluetoothPrinter device) connect,
    required TResult Function(PrintDoc doc) print,
    required TResult Function() checkConnection,
  }) {
    return connect(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function(BluetoothPrinter device)? connect,
    TResult Function(PrintDoc doc)? print,
    TResult Function()? checkConnection,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanDevices value) scan,
    required TResult Function(ConnectDevice value) connect,
    required TResult Function(PrintDocument value) print,
    required TResult Function(CheckConnection value) checkConnection,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanDevices value)? scan,
    TResult Function(ConnectDevice value)? connect,
    TResult Function(PrintDocument value)? print,
    TResult Function(CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class ConnectDevice implements PrinterEvent {
  const factory ConnectDevice(BluetoothPrinter device) = _$ConnectDevice;

  BluetoothPrinter get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectDeviceCopyWith<ConnectDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintDocumentCopyWith<$Res> {
  factory $PrintDocumentCopyWith(
          PrintDocument value, $Res Function(PrintDocument) then) =
      _$PrintDocumentCopyWithImpl<$Res>;
  $Res call({PrintDoc doc});

  $PrintDocCopyWith<$Res> get doc;
}

/// @nodoc
class _$PrintDocumentCopyWithImpl<$Res> extends _$PrinterEventCopyWithImpl<$Res>
    implements $PrintDocumentCopyWith<$Res> {
  _$PrintDocumentCopyWithImpl(
      PrintDocument _value, $Res Function(PrintDocument) _then)
      : super(_value, (v) => _then(v as PrintDocument));

  @override
  PrintDocument get _value => super._value as PrintDocument;

  @override
  $Res call({
    Object? doc = freezed,
  }) {
    return _then(PrintDocument(
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

class _$PrintDocument implements PrintDocument {
  const _$PrintDocument(this.doc);

  @override
  final PrintDoc doc;

  @override
  String toString() {
    return 'PrinterEvent.print(doc: $doc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrintDocument &&
            (identical(other.doc, doc) ||
                const DeepCollectionEquality().equals(other.doc, doc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(doc);

  @JsonKey(ignore: true)
  @override
  $PrintDocumentCopyWith<PrintDocument> get copyWith =>
      _$PrintDocumentCopyWithImpl<PrintDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function(BluetoothPrinter device) connect,
    required TResult Function(PrintDoc doc) print,
    required TResult Function() checkConnection,
  }) {
    return print(doc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function(BluetoothPrinter device)? connect,
    TResult Function(PrintDoc doc)? print,
    TResult Function()? checkConnection,
    required TResult orElse(),
  }) {
    if (print != null) {
      return print(doc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanDevices value) scan,
    required TResult Function(ConnectDevice value) connect,
    required TResult Function(PrintDocument value) print,
    required TResult Function(CheckConnection value) checkConnection,
  }) {
    return print(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanDevices value)? scan,
    TResult Function(ConnectDevice value)? connect,
    TResult Function(PrintDocument value)? print,
    TResult Function(CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (print != null) {
      return print(this);
    }
    return orElse();
  }
}

abstract class PrintDocument implements PrinterEvent {
  const factory PrintDocument(PrintDoc doc) = _$PrintDocument;

  PrintDoc get doc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrintDocumentCopyWith<PrintDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckConnectionCopyWith<$Res> {
  factory $CheckConnectionCopyWith(
          CheckConnection value, $Res Function(CheckConnection) then) =
      _$CheckConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckConnectionCopyWithImpl<$Res>
    extends _$PrinterEventCopyWithImpl<$Res>
    implements $CheckConnectionCopyWith<$Res> {
  _$CheckConnectionCopyWithImpl(
      CheckConnection _value, $Res Function(CheckConnection) _then)
      : super(_value, (v) => _then(v as CheckConnection));

  @override
  CheckConnection get _value => super._value as CheckConnection;
}

/// @nodoc

class _$CheckConnection implements CheckConnection {
  const _$CheckConnection();

  @override
  String toString() {
    return 'PrinterEvent.checkConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function(BluetoothPrinter device) connect,
    required TResult Function(PrintDoc doc) print,
    required TResult Function() checkConnection,
  }) {
    return checkConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function(BluetoothPrinter device)? connect,
    TResult Function(PrintDoc doc)? print,
    TResult Function()? checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanDevices value) scan,
    required TResult Function(ConnectDevice value) connect,
    required TResult Function(PrintDocument value) print,
    required TResult Function(CheckConnection value) checkConnection,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanDevices value)? scan,
    TResult Function(ConnectDevice value)? connect,
    TResult Function(PrintDocument value)? print,
    TResult Function(CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class CheckConnection implements PrinterEvent {
  const factory CheckConnection() = _$CheckConnection;
}

/// @nodoc
class _$PrinterStateTearOff {
  const _$PrinterStateTearOff();

  _PrinterState call(bool isLoading, bool isConnected, String error,
      List<BluetoothPrinter> nearbyDevices) {
    return _PrinterState(
      isLoading,
      isConnected,
      error,
      nearbyDevices,
    );
  }
}

/// @nodoc
const $PrinterState = _$PrinterStateTearOff();

/// @nodoc
mixin _$PrinterState {
// ignore: avoid_positional_boolean_parameters
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<BluetoothPrinter> get nearbyDevices =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrinterStateCopyWith<PrinterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterStateCopyWith<$Res> {
  factory $PrinterStateCopyWith(
          PrinterState value, $Res Function(PrinterState) then) =
      _$PrinterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isConnected,
      String error,
      List<BluetoothPrinter> nearbyDevices});
}

/// @nodoc
class _$PrinterStateCopyWithImpl<$Res> implements $PrinterStateCopyWith<$Res> {
  _$PrinterStateCopyWithImpl(this._value, this._then);

  final PrinterState _value;
  // ignore: unused_field
  final $Res Function(PrinterState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isConnected = freezed,
    Object? error = freezed,
    Object? nearbyDevices = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      nearbyDevices: nearbyDevices == freezed
          ? _value.nearbyDevices
          : nearbyDevices // ignore: cast_nullable_to_non_nullable
              as List<BluetoothPrinter>,
    ));
  }
}

/// @nodoc
abstract class _$PrinterStateCopyWith<$Res>
    implements $PrinterStateCopyWith<$Res> {
  factory _$PrinterStateCopyWith(
          _PrinterState value, $Res Function(_PrinterState) then) =
      __$PrinterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isConnected,
      String error,
      List<BluetoothPrinter> nearbyDevices});
}

/// @nodoc
class __$PrinterStateCopyWithImpl<$Res> extends _$PrinterStateCopyWithImpl<$Res>
    implements _$PrinterStateCopyWith<$Res> {
  __$PrinterStateCopyWithImpl(
      _PrinterState _value, $Res Function(_PrinterState) _then)
      : super(_value, (v) => _then(v as _PrinterState));

  @override
  _PrinterState get _value => super._value as _PrinterState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isConnected = freezed,
    Object? error = freezed,
    Object? nearbyDevices = freezed,
  }) {
    return _then(_PrinterState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      nearbyDevices == freezed
          ? _value.nearbyDevices
          : nearbyDevices // ignore: cast_nullable_to_non_nullable
              as List<BluetoothPrinter>,
    ));
  }
}

/// @nodoc

class _$_PrinterState implements _PrinterState {
  const _$_PrinterState(
      this.isLoading, this.isConnected, this.error, this.nearbyDevices);

  @override // ignore: avoid_positional_boolean_parameters
  final bool isLoading;
  @override
  final bool isConnected;
  @override
  final String error;
  @override
  final List<BluetoothPrinter> nearbyDevices;

  @override
  String toString() {
    return 'PrinterState(isLoading: $isLoading, isConnected: $isConnected, error: $error, nearbyDevices: $nearbyDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrinterState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isConnected, isConnected) ||
                const DeepCollectionEquality()
                    .equals(other.isConnected, isConnected)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.nearbyDevices, nearbyDevices) ||
                const DeepCollectionEquality()
                    .equals(other.nearbyDevices, nearbyDevices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isConnected) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(nearbyDevices);

  @JsonKey(ignore: true)
  @override
  _$PrinterStateCopyWith<_PrinterState> get copyWith =>
      __$PrinterStateCopyWithImpl<_PrinterState>(this, _$identity);
}

abstract class _PrinterState implements PrinterState {
  const factory _PrinterState(bool isLoading, bool isConnected, String error,
      List<BluetoothPrinter> nearbyDevices) = _$_PrinterState;

  @override // ignore: avoid_positional_boolean_parameters
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isConnected => throw _privateConstructorUsedError;
  @override
  String get error => throw _privateConstructorUsedError;
  @override
  List<BluetoothPrinter> get nearbyDevices =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrinterStateCopyWith<_PrinterState> get copyWith =>
      throw _privateConstructorUsedError;
}
