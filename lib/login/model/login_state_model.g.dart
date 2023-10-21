// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateModelImpl _$$LoginStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginStateModelImpl(
      email: json['email'] as String? ?? "",
      password: json['password'] as String? ?? "",
      status: $enumDecodeNullable(_$LoginStatusEnumMap, json['status']) ??
          LoginStatus.initial,
    );

Map<String, dynamic> _$$LoginStateModelImplToJson(
        _$LoginStateModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'status': _$LoginStatusEnumMap[instance.status]!,
    };

const _$LoginStatusEnumMap = {
  LoginStatus.initial: 'initial',
  LoginStatus.loading: 'loading',
  LoginStatus.success: 'success',
  LoginStatus.failure: 'failure',
};
