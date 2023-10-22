part of "login_bloc.dart";

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(false) bool isLoginFormValid,
  }) = _LoginState;
}
