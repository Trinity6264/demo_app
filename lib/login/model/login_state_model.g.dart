// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateModelImpl _$$LoginStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginStateModelImpl(
      email: json['email'] == null
          ? const Email.pure()
          : const EmailJsonConverter().fromJson(json['email'] as String),
      password: json['password'] == null
          ? const Password.pure()
          : const PasswordJsonConverter().fromJson(json['password'] as String),
      status: $enumDecodeNullable(_$LoginStatusEnumMap, json['status']) ??
          LoginStatus.initial,
      isLoginFormValidated: json['isLoginFormValidated'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoginStateModelImplToJson(
        _$LoginStateModelImpl instance) =>
    <String, dynamic>{
      'email': const EmailJsonConverter().toJson(instance.email),
      'password': const PasswordJsonConverter().toJson(instance.password),
      'status': _$LoginStatusEnumMap[instance.status]!,
      'isLoginFormValidated': instance.isLoginFormValidated,
    };

const _$LoginStatusEnumMap = {
  LoginStatus.initial: 'initial',
  LoginStatus.loading: 'loading',
  LoginStatus.success: 'success',
  LoginStatus.failure: 'failure',
};
