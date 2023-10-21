import "package:freezed_annotation/freezed_annotation.dart";

part "login_state_model.freezed.dart";
part "login_state_model.g.dart";

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class LoginStateModel with _$LoginStateModel {
  factory LoginStateModel({
    @Default("") String email,
    @Default("") String password,
    @Default(LoginStatus.initial) LoginStatus status,
  }) = _LoginStateModel;

  factory LoginStateModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStateModelFromJson(json);
}
