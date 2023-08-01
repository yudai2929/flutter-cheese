import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';

abstract class SnapPostRepository {
  Future<List<SnapPost>> fetchMy();
  Future<List<SnapPost>> fetchLiked();
  Future<SnapPost> fetch(FetchSnapPostParams params);
  Future<List<SnapPost>> fetchNearby(FetchNearbySnapPostsParams params);
  Future<void> like(LikeSnapPostParams params);
  Future<void> create(CreateSnapPostParams params);
  Future<void> update(UpdateSnapPostParams params);
  Future<void> delete(DeleteSnapPostParams params);
}
