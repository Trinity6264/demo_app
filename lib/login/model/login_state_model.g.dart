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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginStateModelImplToJson(
        _$LoginStateModelImpl instance) =>
    <String, dynamic>{
      'email': const EmailJsonConverter().toJson(instance.email),
      'password': const PasswordJsonConverter().toJson(instance.password),
      'status': _$LoginStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$LoginStatusEnumMap = {
  LoginStatus.initial: 'initial',
  LoginStatus.loading: 'loading',
  LoginStatus.success: 'success',
  LoginStatus.failure: 'failure',
};

_$LoginStateModelResetImpl _$$LoginStateModelResetImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginStateModelResetImpl(
      email: json['email'] == null
          ? const Email.pure()
          : const EmailJsonConverter().fromJson(json['email'] as String),
      password: json['password'] == null
          ? const Password.pure()
          : const PasswordJsonConverter().fromJson(json['password'] as String),
      status: $enumDecodeNullable(_$LoginStatusEnumMap, json['status']) ??
          LoginStatus.initial,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginStateModelResetImplToJson(
        _$LoginStateModelResetImpl instance) =>
    <String, dynamic>{
      'email': const EmailJsonConverter().toJson(instance.email),
      'password': const PasswordJsonConverter().toJson(instance.password),
      'status': _$LoginStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };
