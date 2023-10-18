import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_model.freezed.dart';
part 'splash_model.g.dart';

@freezed
class SplashModel with _$SplashModel {
  factory SplashModel({
    required String label,
    @Default(0) int count,
  }) = _SplashModel;

  factory SplashModel.fromJson(Map<String, dynamic> json) =>
      _$SplashModelFromJson(json);
}
