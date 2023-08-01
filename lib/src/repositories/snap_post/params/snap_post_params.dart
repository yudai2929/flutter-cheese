// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_post_params.freezed.dart';
part 'snap_post_params.g.dart';

@freezed
class CreateSnapPostParams with _$CreateSnapPostParams {
  @JsonSerializable(explicitToJson: true)
  const factory CreateSnapPostParams({
    required String title,
    String? comment,
    required double longitude,
    required double latitude,
    required List<PostImage> postImages,
    required List<String> tags,
    required String address,
  }) = _CreateSnapPostParams;

  factory CreateSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$CreateSnapPostParamsFromJson(json);
}

@freezed
class PostImage with _$PostImage {
  const factory PostImage({
    required String imagePath,
  }) = _PostImage;

  factory PostImage.fromJson(Map<String, dynamic> json) =>
      _$PostImageFromJson(json);
}

@freezed
class UpdateSnapPostParams with _$UpdateSnapPostParams {
  @JsonSerializable(explicitToJson: true)
  const factory UpdateSnapPostParams({
    required String snapPostId,
    required String title,
    String? comment,
  }) = _UpdateSnapPostParams;

  factory UpdateSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateSnapPostParamsFromJson(json);
}

@freezed
class DeleteSnapPostParams with _$DeleteSnapPostParams {
  const factory DeleteSnapPostParams({
    required String snapPostId,
  }) = _DeleteSnapPostParams;

  factory DeleteSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteSnapPostParamsFromJson(json);
}

@freezed
class LikeSnapPostParams with _$LikeSnapPostParams {
  const factory LikeSnapPostParams({
    required List<String> snapPostIds,
  }) = _LikeSnapPostParams;

  factory LikeSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$LikeSnapPostParamsFromJson(json);
}

@freezed
class FetchNearbySnapPostsParams with _$FetchNearbySnapPostsParams {
  const factory FetchNearbySnapPostsParams({
    required double longitude,
    required double latitude,
  }) = _FetchNearbySnapPostsParams;

  factory FetchNearbySnapPostsParams.fromJson(Map<String, dynamic> json) =>
      _$FetchNearbySnapPostsParamsFromJson(json);
}

@freezed
class FetchSnapPostParams with _$FetchSnapPostParams {
  const factory FetchSnapPostParams({
    required String snapPostId,
  }) = _FetchSnapPostParams;

  factory FetchSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$FetchSnapPostParamsFromJson(json);
}
