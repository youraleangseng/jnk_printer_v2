part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.verifyPhoneNumber(
    String phoneNumber,
  ) = VerifyPhoneNumber;
  const factory AuthEvent.checkStatus() = CheckAuthStatus;
  const factory AuthEvent.verificationCompleted() = VerificationCompleted;
  const factory AuthEvent.verificationFailed(String error) = VerificationFailed;
  const factory AuthEvent.codeAutoRetrievalTimeout(String verificationId) =
      CodeAutoRetrievalTimeout;
  const factory AuthEvent.codeSent(
    String verificationId,
    int? forceResendingToken,
  ) = CodeSent;

  const factory AuthEvent.verifySMS(
    String smsCode,
    String verificationId,
  ) = VerifySMSEvent;
}
