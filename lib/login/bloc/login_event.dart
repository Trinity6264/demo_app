part of "login_bloc.dart";

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onEmailTextChanged({
    required String value,
  }) = _EmailTextChanged;

  const factory LoginEvent.onPasswordTextChanged({
    required String value,
  }) = _PasswordTextChanged;

  const factory LoginEvent.onLogin({
    required void Function(UserCredential credential) onSuccess,
    required void Function(String message) onError,
  }) = _Login;
}
