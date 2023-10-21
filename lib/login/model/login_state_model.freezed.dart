// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginStateModel _$LoginStateModelFromJson(Map<String, dynamic> json) {
  return _LoginStateModel.fromJson(json);
}

/// @nodoc
mixin _$LoginStateModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  LoginStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateModelCopyWith<LoginStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateModelCopyWith<$Res> {
  factory $LoginStateModelCopyWith(
          LoginStateModel value, $Res Function(LoginStateModel) then) =
      _$LoginStateModelCopyWithImpl<$Res, LoginStateModel>;
  @useResult
  $Res call({String email, String password, LoginStatus status});
}

/// @nodoc
class _$LoginStateModelCopyWithImpl<$Res, $Val extends LoginStateModel>
    implements $LoginStateModelCopyWith<$Res> {
  _$LoginStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateModelImplCopyWith<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  factory _$$LoginStateModelImplCopyWith(_$LoginStateModelImpl value,
          $Res Function(_$LoginStateModelImpl) then) =
      __$$LoginStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, LoginStatus status});
}

/// @nodoc
class __$$LoginStateModelImplCopyWithImpl<$Res>
    extends _$LoginStateModelCopyWithImpl<$Res, _$LoginStateModelImpl>
    implements _$$LoginStateModelImplCopyWith<$Res> {
  __$$LoginStateModelImplCopyWithImpl(
      _$LoginStateModelImpl _value, $Res Function(_$LoginStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
  }) {
    return _then(_$LoginStateModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateModelImpl implements _LoginStateModel {
  _$LoginStateModelImpl(
      {this.email = "", this.password = "", this.status = LoginStatus.initial});

  factory _$LoginStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateModelImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final LoginStatus status;

  @override
  String toString() {
    return 'LoginStateModel(email: $email, password: $password, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      __$$LoginStateModelImplCopyWithImpl<_$LoginStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateModelImplToJson(
      this,
    );
  }
}

abstract class _LoginStateModel implements LoginStateModel {
  factory _LoginStateModel(
      {final String email,
      final String password,
      final LoginStatus status}) = _$LoginStateModelImpl;

  factory _LoginStateModel.fromJson(Map<String, dynamic> json) =
      _$LoginStateModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  LoginStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
