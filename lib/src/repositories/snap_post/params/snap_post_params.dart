// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_post_params.freezed.dart';
part 'snap_post_params.g.dart';

@freezed
class CreateSnapPostParams with _$CreateSnapPostParams {
  const factory CreateSnapPostParams({
    required String title,
    String? comment,
    required double longitude,
    required double latitude,
    required List<PostImage> postImages,
    required List<String> tags,
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
