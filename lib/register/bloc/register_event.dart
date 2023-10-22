part of "register_bloc.dart";

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.onEmailTextChanged({
    required String value,
  }) = _EmailTextChanged;

  const factory RegisterEvent.onPasswordTextChanged({
    required String value,
  }) = _PasswordTextChanged;

  const factory RegisterEvent.onRegistered({
    required void Function(UserCredential credential) onSuccess,
    required void Function(String message) onError,
  }) = _Registered;
}
