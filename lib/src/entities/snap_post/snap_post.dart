import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_post.freezed.dart';
part 'snap_post.g.dart';

@freezed
class SnapPost with _$SnapPost {
  @JsonSerializable(explicitToJson: true)
  const factory SnapPost({
    required String snapPostId,
    required String userId,
    required List<PostImage> postImages,
    required List<String> tags,
    required String title,
    String? comment,
    required double longitude,
    required double latitude,
    required String postedAt,
    required String updatedAt,
    required int likedCount,
    required PostedUser postedUser,
  }) = _SnapPost;

  factory SnapPost.fromJson(Map<String, dynamic> json) =>
      _$SnapPostFromJson(json);
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
class PostedUser with _$PostedUser {
  const factory PostedUser({
    required String userId,
    required String name,
    required String iconPath,
  }) = _PostedUser;

  factory PostedUser.fromJson(Map<String, dynamic> json) =>
      _$PostedUserFromJson(json);
}
