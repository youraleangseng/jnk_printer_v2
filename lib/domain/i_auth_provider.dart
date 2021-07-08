import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'failure/failure.dart';

abstract class IAuthProvider {
  Future<Option<Failure>> verifyPhoneNumber(
      String phoneNumber,
      Function(PhoneAuthCredential phoneAuthCredential) verificationCompleted,
      Function(FirebaseAuthException firebaseAuthException) verificationFailed,
      Function(
    String verificationId,
    int? forceResendingToken,
  )
          codeSent,
      Function(String verificationId) codeAutoRetrievalTimeout);

  AuthCredential verifySMSCode(String smsCode, String verificationId);
  Future<Either<Failure, Unit>> verifyWithCredential(
      AuthCredential authCredential);

  bool get isLoggedIn;
}
