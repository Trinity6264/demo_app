import 'package:demo_app/form_inputs/email.dart';
import 'package:demo_app/form_inputs/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_model.freezed.dart';
part 'login_state_model.g.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class LoginStateModel with _$LoginStateModel {
  factory LoginStateModel({
    @EmailJsonConverter() @Default(Email.pure()) Email email,
    @PasswordJsonConverter() @Default(Password.pure()) Password password,
    @Default(LoginStatus.initial) LoginStatus status,
  }) = _LoginStateModel;

  factory LoginStateModel.reset({
    @EmailJsonConverter() @Default(Email.pure()) Email email,
    @PasswordJsonConverter() @Default(Password.pure()) Password password,
    @Default(LoginStatus.initial) LoginStatus status,
  }) = _LoginStateModelReset;

  factory LoginStateModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStateModelFromJson(json);
}
