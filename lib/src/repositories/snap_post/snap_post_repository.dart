import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';

abstract class SnapPostRepository {
  Future<List<SnapPost>> fetchMy();
  Future<void> create(CreateSnapPostParams params);
}
