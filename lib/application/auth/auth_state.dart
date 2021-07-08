part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loggedIn() = LoggedInState;
  const factory AuthState.notLoggedIn() = NotLoggedInState;

  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.codeSent(
    String verificationId,
  ) = AuthCodeSentState;
  const factory AuthState.error(String error) = AuthErrorState;
  const factory AuthState.initial() = AuthInitialState;
}
