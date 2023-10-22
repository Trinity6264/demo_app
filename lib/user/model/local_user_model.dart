import "package:freezed_annotation/freezed_annotation.dart";
import "package:hive/hive.dart";

part "local_user_model.freezed.dart";
part "local_user_model.g.dart";

@freezed
@HiveType(typeId: 0)
class LocalUserModel extends HiveObject with _$LocalUserModel {
  factory LocalUserModel({
    @HiveField(0) String? uid,
    @HiveField(1) String? email,
    @HiveField(2) @Default(false) bool isVerfied,
  }) = _LocalUserModel;

  factory LocalUserModel.fromJson(Map<String, dynamic> json) =>
      _$LocalUserModelFromJson(json);
}
