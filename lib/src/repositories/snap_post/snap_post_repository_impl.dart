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
  Future<void> create(CreateSnapPostParams params) async {
    await _firebaseFunctionsApi.execute('createSnapPost',
        param: params.toJson());
  }
}
