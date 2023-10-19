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
  switch (json['runtimeType']) {
    case 'default':
      return _LoginStateModel.fromJson(json);
    case 'reset':
      return _LoginStateModelReset.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoginStateModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LoginStateModel {
  @EmailJsonConverter()
  Email get email => throw _privateConstructorUsedError;
  @PasswordJsonConverter()
  Password get password => throw _privateConstructorUsedError;
  LoginStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)
        $default, {
    required TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)
        reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        $default, {
    TResult? Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        $default, {
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginStateModel value) $default, {
    required TResult Function(_LoginStateModelReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginStateModel value)? $default, {
    TResult? Function(_LoginStateModelReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginStateModel value)? $default, {
    TResult Function(_LoginStateModelReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  $Res call(
      {@EmailJsonConverter() Email email,
      @PasswordJsonConverter() Password password,
      LoginStatus status});
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
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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
  $Res call(
      {@EmailJsonConverter() Email email,
      @PasswordJsonConverter() Password password,
      LoginStatus status});
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
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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
      {@EmailJsonConverter() this.email = const Email.pure(),
      @PasswordJsonConverter() this.password = const Password.pure(),
      this.status = LoginStatus.initial,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$LoginStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateModelImplFromJson(json);

  @override
  @JsonKey()
  @EmailJsonConverter()
  final Email email;
  @override
  @JsonKey()
  @PasswordJsonConverter()
  final Password password;
  @override
  @JsonKey()
  final LoginStatus status;

  @JsonKey(name: 'runtimeType')
  final String $type;

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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)
        $default, {
    required TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)
        reset,
  }) {
    return $default(email, password, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        $default, {
    TResult? Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        reset,
  }) {
    return $default?.call(email, password, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        $default, {
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        reset,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginStateModel value) $default, {
    required TResult Function(_LoginStateModelReset value) reset,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginStateModel value)? $default, {
    TResult? Function(_LoginStateModelReset value)? reset,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginStateModel value)? $default, {
    TResult Function(_LoginStateModelReset value)? reset,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateModelImplToJson(
      this,
    );
  }
}

abstract class _LoginStateModel implements LoginStateModel {
  factory _LoginStateModel(
      {@EmailJsonConverter() final Email email,
      @PasswordJsonConverter() final Password password,
      final LoginStatus status}) = _$LoginStateModelImpl;

  factory _LoginStateModel.fromJson(Map<String, dynamic> json) =
      _$LoginStateModelImpl.fromJson;

  @override
  @EmailJsonConverter()
  Email get email;
  @override
  @PasswordJsonConverter()
  Password get password;
  @override
  LoginStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateModelImplCopyWith<_$LoginStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateModelResetImplCopyWith<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  factory _$$LoginStateModelResetImplCopyWith(_$LoginStateModelResetImpl value,
          $Res Function(_$LoginStateModelResetImpl) then) =
      __$$LoginStateModelResetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@EmailJsonConverter() Email email,
      @PasswordJsonConverter() Password password,
      LoginStatus status});
}

/// @nodoc
class __$$LoginStateModelResetImplCopyWithImpl<$Res>
    extends _$LoginStateModelCopyWithImpl<$Res, _$LoginStateModelResetImpl>
    implements _$$LoginStateModelResetImplCopyWith<$Res> {
  __$$LoginStateModelResetImplCopyWithImpl(_$LoginStateModelResetImpl _value,
      $Res Function(_$LoginStateModelResetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
  }) {
    return _then(_$LoginStateModelResetImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateModelResetImpl implements _LoginStateModelReset {
  _$LoginStateModelResetImpl(
      {@EmailJsonConverter() this.email = const Email.pure(),
      @PasswordJsonConverter() this.password = const Password.pure(),
      this.status = LoginStatus.initial,
      final String? $type})
      : $type = $type ?? 'reset';

  factory _$LoginStateModelResetImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateModelResetImplFromJson(json);

  @override
  @JsonKey()
  @EmailJsonConverter()
  final Email email;
  @override
  @JsonKey()
  @PasswordJsonConverter()
  final Password password;
  @override
  @JsonKey()
  final LoginStatus status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginStateModel.reset(email: $email, password: $password, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateModelResetImpl &&
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
  _$$LoginStateModelResetImplCopyWith<_$LoginStateModelResetImpl>
      get copyWith =>
          __$$LoginStateModelResetImplCopyWithImpl<_$LoginStateModelResetImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)
        $default, {
    required TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)
        reset,
  }) {
    return reset(email, password, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        $default, {
    TResult? Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        reset,
  }) {
    return reset?.call(email, password, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        $default, {
    TResult Function(@EmailJsonConverter() Email email,
            @PasswordJsonConverter() Password password, LoginStatus status)?
        reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(email, password, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginStateModel value) $default, {
    required TResult Function(_LoginStateModelReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginStateModel value)? $default, {
    TResult? Function(_LoginStateModelReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginStateModel value)? $default, {
    TResult Function(_LoginStateModelReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateModelResetImplToJson(
      this,
    );
  }
}

abstract class _LoginStateModelReset implements LoginStateModel {
  factory _LoginStateModelReset(
      {@EmailJsonConverter() final Email email,
      @PasswordJsonConverter() final Password password,
      final LoginStatus status}) = _$LoginStateModelResetImpl;

  factory _LoginStateModelReset.fromJson(Map<String, dynamic> json) =
      _$LoginStateModelResetImpl.fromJson;

  @override
  @EmailJsonConverter()
  Email get email;
  @override
  @PasswordJsonConverter()
  Password get password;
  @override
  LoginStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateModelResetImplCopyWith<_$LoginStateModelResetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
