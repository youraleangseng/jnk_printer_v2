// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  VerifyPhoneNumber verifyPhoneNumber(String phoneNumber) {
    return VerifyPhoneNumber(
      phoneNumber,
    );
  }

  CheckAuthStatus checkStatus() {
    return const CheckAuthStatus();
  }

  VerificationCompleted verificationCompleted() {
    return const VerificationCompleted();
  }

  VerificationFailed verificationFailed(String error) {
    return VerificationFailed(
      error,
    );
  }

  CodeAutoRetrievalTimeout codeAutoRetrievalTimeout(String verificationId) {
    return CodeAutoRetrievalTimeout(
      verificationId,
    );
  }

  CodeSent codeSent(String verificationId, int? forceResendingToken) {
    return CodeSent(
      verificationId,
      forceResendingToken,
    );
  }

  VerifySMSEvent verifySMS(String smsCode, String verificationId) {
    return VerifySMSEvent(
      smsCode,
      verificationId,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $VerifyPhoneNumberCopyWith<$Res> {
  factory $VerifyPhoneNumberCopyWith(
          VerifyPhoneNumber value, $Res Function(VerifyPhoneNumber) then) =
      _$VerifyPhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$VerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $VerifyPhoneNumberCopyWith<$Res> {
  _$VerifyPhoneNumberCopyWithImpl(
      VerifyPhoneNumber _value, $Res Function(VerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as VerifyPhoneNumber));

  @override
  VerifyPhoneNumber get _value => super._value as VerifyPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(VerifyPhoneNumber(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPhoneNumber implements VerifyPhoneNumber {
  const _$VerifyPhoneNumber(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.verifyPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerifyPhoneNumber &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $VerifyPhoneNumberCopyWith<VerifyPhoneNumber> get copyWith =>
      _$VerifyPhoneNumberCopyWithImpl<VerifyPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return verifyPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneNumber implements AuthEvent {
  const factory VerifyPhoneNumber(String phoneNumber) = _$VerifyPhoneNumber;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPhoneNumberCopyWith<VerifyPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAuthStatusCopyWith<$Res> {
  factory $CheckAuthStatusCopyWith(
          CheckAuthStatus value, $Res Function(CheckAuthStatus) then) =
      _$CheckAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAuthStatusCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $CheckAuthStatusCopyWith<$Res> {
  _$CheckAuthStatusCopyWithImpl(
      CheckAuthStatus _value, $Res Function(CheckAuthStatus) _then)
      : super(_value, (v) => _then(v as CheckAuthStatus));

  @override
  CheckAuthStatus get _value => super._value as CheckAuthStatus;
}

/// @nodoc

class _$CheckAuthStatus implements CheckAuthStatus {
  const _$CheckAuthStatus();

  @override
  String toString() {
    return 'AuthEvent.checkStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatus implements AuthEvent {
  const factory CheckAuthStatus() = _$CheckAuthStatus;
}

/// @nodoc
abstract class $VerificationCompletedCopyWith<$Res> {
  factory $VerificationCompletedCopyWith(VerificationCompleted value,
          $Res Function(VerificationCompleted) then) =
      _$VerificationCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerificationCompletedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $VerificationCompletedCopyWith<$Res> {
  _$VerificationCompletedCopyWithImpl(
      VerificationCompleted _value, $Res Function(VerificationCompleted) _then)
      : super(_value, (v) => _then(v as VerificationCompleted));

  @override
  VerificationCompleted get _value => super._value as VerificationCompleted;
}

/// @nodoc

class _$VerificationCompleted implements VerificationCompleted {
  const _$VerificationCompleted();

  @override
  String toString() {
    return 'AuthEvent.verificationCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerificationCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return verificationCompleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (verificationCompleted != null) {
      return verificationCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return verificationCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (verificationCompleted != null) {
      return verificationCompleted(this);
    }
    return orElse();
  }
}

abstract class VerificationCompleted implements AuthEvent {
  const factory VerificationCompleted() = _$VerificationCompleted;
}

/// @nodoc
abstract class $VerificationFailedCopyWith<$Res> {
  factory $VerificationFailedCopyWith(
          VerificationFailed value, $Res Function(VerificationFailed) then) =
      _$VerificationFailedCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$VerificationFailedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $VerificationFailedCopyWith<$Res> {
  _$VerificationFailedCopyWithImpl(
      VerificationFailed _value, $Res Function(VerificationFailed) _then)
      : super(_value, (v) => _then(v as VerificationFailed));

  @override
  VerificationFailed get _value => super._value as VerificationFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(VerificationFailed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerificationFailed implements VerificationFailed {
  const _$VerificationFailed(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthEvent.verificationFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerificationFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $VerificationFailedCopyWith<VerificationFailed> get copyWith =>
      _$VerificationFailedCopyWithImpl<VerificationFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return verificationFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return verificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(this);
    }
    return orElse();
  }
}

abstract class VerificationFailed implements AuthEvent {
  const factory VerificationFailed(String error) = _$VerificationFailed;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationFailedCopyWith<VerificationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeAutoRetrievalTimeoutCopyWith<$Res> {
  factory $CodeAutoRetrievalTimeoutCopyWith(CodeAutoRetrievalTimeout value,
          $Res Function(CodeAutoRetrievalTimeout) then) =
      _$CodeAutoRetrievalTimeoutCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class _$CodeAutoRetrievalTimeoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CodeAutoRetrievalTimeoutCopyWith<$Res> {
  _$CodeAutoRetrievalTimeoutCopyWithImpl(CodeAutoRetrievalTimeout _value,
      $Res Function(CodeAutoRetrievalTimeout) _then)
      : super(_value, (v) => _then(v as CodeAutoRetrievalTimeout));

  @override
  CodeAutoRetrievalTimeout get _value =>
      super._value as CodeAutoRetrievalTimeout;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(CodeAutoRetrievalTimeout(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeAutoRetrievalTimeout implements CodeAutoRetrievalTimeout {
  const _$CodeAutoRetrievalTimeout(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthEvent.codeAutoRetrievalTimeout(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeAutoRetrievalTimeout &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId);

  @JsonKey(ignore: true)
  @override
  $CodeAutoRetrievalTimeoutCopyWith<CodeAutoRetrievalTimeout> get copyWith =>
      _$CodeAutoRetrievalTimeoutCopyWithImpl<CodeAutoRetrievalTimeout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return codeAutoRetrievalTimeout(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return codeAutoRetrievalTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout(this);
    }
    return orElse();
  }
}

abstract class CodeAutoRetrievalTimeout implements AuthEvent {
  const factory CodeAutoRetrievalTimeout(String verificationId) =
      _$CodeAutoRetrievalTimeout;

  String get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeAutoRetrievalTimeoutCopyWith<CodeAutoRetrievalTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSentCopyWith<$Res> {
  factory $CodeSentCopyWith(CodeSent value, $Res Function(CodeSent) then) =
      _$CodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId, int? forceResendingToken});
}

/// @nodoc
class _$CodeSentCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $CodeSentCopyWith<$Res> {
  _$CodeSentCopyWithImpl(CodeSent _value, $Res Function(CodeSent) _then)
      : super(_value, (v) => _then(v as CodeSent));

  @override
  CodeSent get _value => super._value as CodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? forceResendingToken = freezed,
  }) {
    return _then(CodeSent(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      forceResendingToken == freezed
          ? _value.forceResendingToken
          : forceResendingToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CodeSent implements CodeSent {
  const _$CodeSent(this.verificationId, this.forceResendingToken);

  @override
  final String verificationId;
  @override
  final int? forceResendingToken;

  @override
  String toString() {
    return 'AuthEvent.codeSent(verificationId: $verificationId, forceResendingToken: $forceResendingToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeSent &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)) &&
            (identical(other.forceResendingToken, forceResendingToken) ||
                const DeepCollectionEquality()
                    .equals(other.forceResendingToken, forceResendingToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId) ^
      const DeepCollectionEquality().hash(forceResendingToken);

  @JsonKey(ignore: true)
  @override
  $CodeSentCopyWith<CodeSent> get copyWith =>
      _$CodeSentCopyWithImpl<CodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return codeSent(verificationId, forceResendingToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, forceResendingToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class CodeSent implements AuthEvent {
  const factory CodeSent(String verificationId, int? forceResendingToken) =
      _$CodeSent;

  String get verificationId => throw _privateConstructorUsedError;
  int? get forceResendingToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSentCopyWith<CodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifySMSEventCopyWith<$Res> {
  factory $VerifySMSEventCopyWith(
          VerifySMSEvent value, $Res Function(VerifySMSEvent) then) =
      _$VerifySMSEventCopyWithImpl<$Res>;
  $Res call({String smsCode, String verificationId});
}

/// @nodoc
class _$VerifySMSEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $VerifySMSEventCopyWith<$Res> {
  _$VerifySMSEventCopyWithImpl(
      VerifySMSEvent _value, $Res Function(VerifySMSEvent) _then)
      : super(_value, (v) => _then(v as VerifySMSEvent));

  @override
  VerifySMSEvent get _value => super._value as VerifySMSEvent;

  @override
  $Res call({
    Object? smsCode = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(VerifySMSEvent(
      smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifySMSEvent implements VerifySMSEvent {
  const _$VerifySMSEvent(this.smsCode, this.verificationId);

  @override
  final String smsCode;
  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthEvent.verifySMS(smsCode: $smsCode, verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerifySMSEvent &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality()
                    .equals(other.smsCode, smsCode)) &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(smsCode) ^
      const DeepCollectionEquality().hash(verificationId);

  @JsonKey(ignore: true)
  @override
  $VerifySMSEventCopyWith<VerifySMSEvent> get copyWith =>
      _$VerifySMSEventCopyWithImpl<VerifySMSEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() checkStatus,
    required TResult Function() verificationCompleted,
    required TResult Function(String error) verificationFailed,
    required TResult Function(String verificationId) codeAutoRetrievalTimeout,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String smsCode, String verificationId) verifySMS,
  }) {
    return verifySMS(smsCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? checkStatus,
    TResult Function()? verificationCompleted,
    TResult Function(String error)? verificationFailed,
    TResult Function(String verificationId)? codeAutoRetrievalTimeout,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String smsCode, String verificationId)? verifySMS,
    required TResult orElse(),
  }) {
    if (verifySMS != null) {
      return verifySMS(smsCode, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(CheckAuthStatus value) checkStatus,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(VerifySMSEvent value) verifySMS,
  }) {
    return verifySMS(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(CheckAuthStatus value)? checkStatus,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(VerifySMSEvent value)? verifySMS,
    required TResult orElse(),
  }) {
    if (verifySMS != null) {
      return verifySMS(this);
    }
    return orElse();
  }
}

abstract class VerifySMSEvent implements AuthEvent {
  const factory VerifySMSEvent(String smsCode, String verificationId) =
      _$VerifySMSEvent;

  String get smsCode => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifySMSEventCopyWith<VerifySMSEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  LoggedInState loggedIn() {
    return const LoggedInState();
  }

  NotLoggedInState notLoggedIn() {
    return const NotLoggedInState();
  }

  AuthLoadingState loading() {
    return const AuthLoadingState();
  }

  AuthCodeSentState codeSent(String verificationId) {
    return AuthCodeSentState(
      verificationId,
    );
  }

  AuthErrorState error(String error) {
    return AuthErrorState(
      error,
    );
  }

  AuthInitialState initial() {
    return const AuthInitialState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $LoggedInStateCopyWith<$Res> {
  factory $LoggedInStateCopyWith(
          LoggedInState value, $Res Function(LoggedInState) then) =
      _$LoggedInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedInStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoggedInStateCopyWith<$Res> {
  _$LoggedInStateCopyWithImpl(
      LoggedInState _value, $Res Function(LoggedInState) _then)
      : super(_value, (v) => _then(v as LoggedInState));

  @override
  LoggedInState get _value => super._value as LoggedInState;
}

/// @nodoc

class _$LoggedInState implements LoggedInState {
  const _$LoggedInState();

  @override
  String toString() {
    return 'AuthState.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedInState implements AuthState {
  const factory LoggedInState() = _$LoggedInState;
}

/// @nodoc
abstract class $NotLoggedInStateCopyWith<$Res> {
  factory $NotLoggedInStateCopyWith(
          NotLoggedInState value, $Res Function(NotLoggedInState) then) =
      _$NotLoggedInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedInStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $NotLoggedInStateCopyWith<$Res> {
  _$NotLoggedInStateCopyWithImpl(
      NotLoggedInState _value, $Res Function(NotLoggedInState) _then)
      : super(_value, (v) => _then(v as NotLoggedInState));

  @override
  NotLoggedInState get _value => super._value as NotLoggedInState;
}

/// @nodoc

class _$NotLoggedInState implements NotLoggedInState {
  const _$NotLoggedInState();

  @override
  String toString() {
    return 'AuthState.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoggedInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class NotLoggedInState implements AuthState {
  const factory NotLoggedInState() = _$NotLoggedInState;
}

/// @nodoc
abstract class $AuthLoadingStateCopyWith<$Res> {
  factory $AuthLoadingStateCopyWith(
          AuthLoadingState value, $Res Function(AuthLoadingState) then) =
      _$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingStateCopyWith<$Res> {
  _$AuthLoadingStateCopyWithImpl(
      AuthLoadingState _value, $Res Function(AuthLoadingState) _then)
      : super(_value, (v) => _then(v as AuthLoadingState));

  @override
  AuthLoadingState get _value => super._value as AuthLoadingState;
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class $AuthCodeSentStateCopyWith<$Res> {
  factory $AuthCodeSentStateCopyWith(
          AuthCodeSentState value, $Res Function(AuthCodeSentState) then) =
      _$AuthCodeSentStateCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class _$AuthCodeSentStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthCodeSentStateCopyWith<$Res> {
  _$AuthCodeSentStateCopyWithImpl(
      AuthCodeSentState _value, $Res Function(AuthCodeSentState) _then)
      : super(_value, (v) => _then(v as AuthCodeSentState));

  @override
  AuthCodeSentState get _value => super._value as AuthCodeSentState;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(AuthCodeSentState(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthCodeSentState implements AuthCodeSentState {
  const _$AuthCodeSentState(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthState.codeSent(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthCodeSentState &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId);

  @JsonKey(ignore: true)
  @override
  $AuthCodeSentStateCopyWith<AuthCodeSentState> get copyWith =>
      _$AuthCodeSentStateCopyWithImpl<AuthCodeSentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) {
    return codeSent(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class AuthCodeSentState implements AuthState {
  const factory AuthCodeSentState(String verificationId) = _$AuthCodeSentState;

  String get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCodeSentStateCopyWith<AuthCodeSentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorStateCopyWith<$Res> {
  factory $AuthErrorStateCopyWith(
          AuthErrorState value, $Res Function(AuthErrorState) then) =
      _$AuthErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$AuthErrorStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthErrorStateCopyWith<$Res> {
  _$AuthErrorStateCopyWithImpl(
      AuthErrorState _value, $Res Function(AuthErrorState) _then)
      : super(_value, (v) => _then(v as AuthErrorState));

  @override
  AuthErrorState get _value => super._value as AuthErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthErrorState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorState implements AuthErrorState {
  const _$AuthErrorState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AuthErrorStateCopyWith<AuthErrorState> get copyWith =>
      _$AuthErrorStateCopyWithImpl<AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthErrorState implements AuthState {
  const factory AuthErrorState(String error) = _$AuthErrorState;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthErrorStateCopyWith<AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInitialStateCopyWith<$Res> {
  factory $AuthInitialStateCopyWith(
          AuthInitialState value, $Res Function(AuthInitialState) then) =
      _$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInitialStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInitialStateCopyWith<$Res> {
  _$AuthInitialStateCopyWithImpl(
      AuthInitialState _value, $Res Function(AuthInitialState) _then)
      : super(_value, (v) => _then(v as AuthInitialState));

  @override
  AuthInitialState get _value => super._value as AuthInitialState;
}

/// @nodoc

class _$AuthInitialState implements AuthInitialState {
  const _$AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function(String verificationId) codeSent,
    required TResult Function(String error) error,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function(String verificationId)? codeSent,
    TResult Function(String error)? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedInState value) loggedIn,
    required TResult Function(NotLoggedInState value) notLoggedIn,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthCodeSentState value) codeSent,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedInState value)? loggedIn,
    TResult Function(NotLoggedInState value)? notLoggedIn,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthCodeSentState value)? codeSent,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthState {
  const factory AuthInitialState() = _$AuthInitialState;
}
