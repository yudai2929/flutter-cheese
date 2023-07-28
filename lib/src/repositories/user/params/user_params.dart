// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_params.freezed.dart';
part 'user_params.g.dart';

@freezed
class CreateUserParams with _$CreateUserParams {
  const factory CreateUserParams({
    required String name,
    required String iconPath,
  }) = _CreateUserParams;

  factory CreateUserParams.fromJson(Map<String, dynamic> json) =>
      _$CreateUserParamsFromJson(json);
}

@freezed
class UpdateUserParams with _$UpdateUserParams {
  const factory UpdateUserParams({
    required String name,
    required String iconPath,
    required double searchedRadiusInM,
  }) = _UpdateUserParams;

  factory UpdateUserParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserParamsFromJson(json);
}
