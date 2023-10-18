// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SplashModel _$SplashModelFromJson(Map<String, dynamic> json) {
  return _SplashModel.fromJson(json);
}

/// @nodoc
mixin _$SplashModel {
  String get label => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplashModelCopyWith<SplashModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashModelCopyWith<$Res> {
  factory $SplashModelCopyWith(
          SplashModel value, $Res Function(SplashModel) then) =
      _$SplashModelCopyWithImpl<$Res, SplashModel>;
  @useResult
  $Res call({String label, int count});
}

/// @nodoc
class _$SplashModelCopyWithImpl<$Res, $Val extends SplashModel>
    implements $SplashModelCopyWith<$Res> {
  _$SplashModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashModelImplCopyWith<$Res>
    implements $SplashModelCopyWith<$Res> {
  factory _$$SplashModelImplCopyWith(
          _$SplashModelImpl value, $Res Function(_$SplashModelImpl) then) =
      __$$SplashModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int count});
}

/// @nodoc
class __$$SplashModelImplCopyWithImpl<$Res>
    extends _$SplashModelCopyWithImpl<$Res, _$SplashModelImpl>
    implements _$$SplashModelImplCopyWith<$Res> {
  __$$SplashModelImplCopyWithImpl(
      _$SplashModelImpl _value, $Res Function(_$SplashModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? count = null,
  }) {
    return _then(_$SplashModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplashModelImpl implements _SplashModel {
  _$SplashModelImpl({required this.label, this.count = 0});

  factory _$SplashModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplashModelImplFromJson(json);

  @override
  final String label;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'SplashModel(label: $label, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashModelImplCopyWith<_$SplashModelImpl> get copyWith =>
      __$$SplashModelImplCopyWithImpl<_$SplashModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplashModelImplToJson(
      this,
    );
  }
}

abstract class _SplashModel implements SplashModel {
  factory _SplashModel({required final String label, final int count}) =
      _$SplashModelImpl;

  factory _SplashModel.fromJson(Map<String, dynamic> json) =
      _$SplashModelImpl.fromJson;

  @override
  String get label;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$SplashModelImplCopyWith<_$SplashModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
