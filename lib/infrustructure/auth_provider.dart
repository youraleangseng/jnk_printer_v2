import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:logger/logger.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_auth_provider.dart';

class AuthProvider extends IAuthProvider {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Option<Failure>> verifyPhoneNumber(
      String phoneNumber,
      Function(PhoneAuthCredential phoneAuthCredential) verificationCompleted,
      Function(FirebaseAuthException firebaseAuthException) verificationFailed,
      Function(String verificationId, int? forceResendingToken) codeSent,
      Function(String verificationId) codeAutoRetrievalTimeout) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);

      return none();
    } catch (e) {
      Logger().e('Excpetion occured while verifying OTP code ${e.toString()}');
      return some(Failure(e.toString()));
    }
  }

  @override
  AuthCredential verifySMSCode(String smsCode, String verificationId) =>
      PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);

  @override
  Future<Either<Failure, Unit>> verifyWithCredential(
      AuthCredential authCredential) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(authCredential);
      if (userCredential.user != null) {
        Logger().i('Loggedin successfully ${userCredential.user!.uid}');
        return right(unit);
      } else {
        Logger().e('Something went wrong when verifying with credential');
        return left(const Failure(
            'Something went wrong when verifying with credential'));
      }
    } catch (e) {
      Logger().e(e);
      return left(Failure(e.toString()));
    }
  }

  @override
  // TODO: implement isLoggedIn
  bool get isLoggedIn => _firebaseAuth.currentUser != null;
}
