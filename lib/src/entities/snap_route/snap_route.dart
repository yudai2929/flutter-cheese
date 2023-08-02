import 'package:cheese_client/src/entities/snap_post/post_user.dart';
import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_route.freezed.dart';
part 'snap_route.g.dart';

@freezed
class SnapRoute with _$SnapRoute {
  @JsonSerializable(explicitToJson: true)
  const factory SnapRoute(
      {required String snapRouteId,
      required String title,
      required String createdUserId,
      required String createdAt,
      required String updatedAt,
      required List<SnapPost> snapPosts}) = _SnapRoute;

  factory SnapRoute.fromJson(Map<String, dynamic> json) =>
      _$SnapRouteFromJson(json);
}
