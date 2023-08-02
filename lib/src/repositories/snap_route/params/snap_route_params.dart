import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_route_params.freezed.dart';
part 'snap_route_params.g.dart';

@freezed
class CreateSnapRouteParams with _$CreateSnapRouteParams {
  @JsonSerializable(explicitToJson: true)
  const factory CreateSnapRouteParams(
      {required String title,
      required List<String> snapPostIds}) = _CreateSnapRouteParams;

  factory CreateSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$CreateSnapRouteParamsFromJson(json);
}

@freezed
class UpdateSnapRouteParams with _$UpdateSnapRouteParams {
  @JsonSerializable(explicitToJson: true)
  const factory UpdateSnapRouteParams(
      {required String snapRouteId,
      required String title,
      required List<String> snapPostIds}) = _UpdateSnapRouteParams;

  factory UpdateSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateSnapRouteParamsFromJson(json);
}

@freezed
class DeleteSnapRouteParams with _$DeleteSnapRouteParams {
  const factory DeleteSnapRouteParams({
    required String snapRouteId,
  }) = _DeleteSnapRouteParams;

  factory DeleteSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteSnapRouteParamsFromJson(json);
}

@freezed
class FetchSnapRouteParams with _$FetchSnapRouteParams {
  const factory FetchSnapRouteParams({
    required String snapRouteId,
  }) = _FetchSnapRouteParams;

  factory FetchSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$FetchSnapRouteParamsFromJson(json);
}
