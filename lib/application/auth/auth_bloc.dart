import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:logger/logger.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_auth_provider.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthProvider authProvider;
  AuthBloc(this.authProvider) : super(const AuthInitialState());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      verifyPhoneNumber: verifyPhoneNumber,
      verificationCompleted: (e) async* {
        yield const LoggedInState();
      },
      verificationFailed: (e) async* {
        yield AuthErrorState(e.error);
      },
      codeAutoRetrievalTimeout: (e) async* {},
      codeSent: (e) async* {
        yield AuthCodeSentState(e.verificationId);
      },
      verifySMS: (e) async* {
        final AuthCredential credential =
            authProvider.verifySMSCode(e.smsCode, e.verificationId);

        final Either<Failure, Unit> _response =
            await authProvider.verifyWithCredential(credential);
        yield _response.fold(
            (l) => AuthErrorState(l.error), (r) => const LoggedInState());
      },
      checkStatus: (CheckAuthStatus value) async* {
        final bool status = authProvider.isLoggedIn;
        if (status) {
          yield const LoggedInState();
        } else {
          yield const NotLoggedInState();
        }
      },
    );
  }

  Stream<AuthState> verifyPhoneNumber(VerifyPhoneNumber event) async* {
    yield const AuthLoadingState();
    final Option<Failure> _verifyResponse =
        await authProvider.verifyPhoneNumber(
            event.phoneNumber,
            onVerificationCompleted,
            verificationFailed,
            codeSent,
            (verificationId) =>
                Logger().i('Code Auto retrieve time out $verificationId'));
    yield _verifyResponse.fold(() => const AuthLoadingState(),
        (a) => AuthErrorState(a.error.toString()));
  }

  Future<void> onVerificationCompleted(
      PhoneAuthCredential phoneAuthCredential) async {
    Logger().i('onVerificationCompleted');
    final Either<Failure, Unit> _response =
        await authProvider.verifyWithCredential(phoneAuthCredential);

    _response.fold((l) {
      add(VerificationFailed(l.error));
    }, (r) {
      add(const VerificationCompleted());
    });
  }

  void verificationFailed(FirebaseAuthException firebaseAuthException) {
    Logger().i('verificationFailed');
    add(VerificationFailed(firebaseAuthException.toString()));
  }

  void codeSent(String verificationId, int? forceResendingToken) {
    Logger().i('code is sent: $verificationId');
    add(CodeSent(verificationId, forceResendingToken));
  }
}
