import 'package:cheese_client/src/entities/snap_post/post_user.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
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
    required String address,
  }) = _SnapPost;

  factory SnapPost.fromJson(Map<String, dynamic> json) =>
      _$SnapPostFromJson(json);
}
