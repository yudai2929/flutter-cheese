import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
import 'package:cheese_client/src/repositories/snap_post/snap_post_repository.dart';
import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';

class SnapPostRepositoryImpl implements SnapPostRepository {
  final FirebaseFunctionsApi _firebaseFunctionsApi;

  SnapPostRepositoryImpl(this._firebaseFunctionsApi);

  @override
  Future<List<SnapPost>> fetchMy() async {
    final List data = await _firebaseFunctionsApi.execute('fetchMySnapPosts');
    return data.map<SnapPost>((e) => SnapPost.fromJson(e)).toList();
  }

  @override
  Future<List<SnapPost>> fetchLiked() async {
    final List data =
        await _firebaseFunctionsApi.execute('fetchLikedSnapPosts');
    return data.map<SnapPost>((e) => SnapPost.fromJson(e)).toList();
  }

  @override
  Future<SnapPost> fetch(FetchSnapPostParams params) async {
    final data = await _firebaseFunctionsApi.execute('fetchSnapPost',
        param: params.toJson());
    return SnapPost.fromJson(data);
  }

  @override
  Future<List<SnapPost>> fetchNearby(FetchNearbySnapPostsParams params) async {
    final List data =
        await _firebaseFunctionsApi.execute('fetchNearbySnapPosts');
    return data.map<SnapPost>((e) => SnapPost.fromJson(e)).toList();
  }

  @override
  Future<void> like(LikeSnapPostParams params) async {
    await _firebaseFunctionsApi.execute('likeSnapPost', param: params.toJson());
  }

  @override
  Future<void> create(CreateSnapPostParams params) async {
    await _firebaseFunctionsApi.execute('createSnapPost',
        param: params.toJson());
  }

  @override
  Future<void> update(UpdateSnapPostParams params) async {
    await _firebaseFunctionsApi.execute('updateSnapPost',
        param: params.toJson());
  }

  @override
  Future<void> delete(DeleteSnapPostParams params) async {
    await _firebaseFunctionsApi.execute('deleteSnapPost',
        param: params.toJson());
  }
}
