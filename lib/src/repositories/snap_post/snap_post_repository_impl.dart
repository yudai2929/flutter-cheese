import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
import 'package:cheese_client/src/repositories/snap_post/snap_post_repository.dart';
import 'package:cheese_client/src/utils/firebase_exception.dart';
import 'package:cloud_functions/cloud_functions.dart';

class SnapPostRepositoryImpl implements SnapPostRepository {
  final FirebaseFunctions _firebaseFunctions;

  SnapPostRepositoryImpl(this._firebaseFunctions);
  @override
  Future<List<SnapPost>> fetchMy() async {
    try {
      final HttpsCallable callable =
          _firebaseFunctions.httpsCallable('fetchMySnapPosts');
      final HttpsCallableResult<List> res = await callable.call();
      return res.data
          .map<SnapPost>((e) => SnapPost.fromJson(e as Map<String, dynamic>))
          .toList();
    } on FirebaseFunctionsException catch (e) {
      throw firebaseFunctionsException(e);
    }
  }

  @override
  Future<void> create(CreateSnapPostParams params) async {
    try {
      final HttpsCallable callable =
          _firebaseFunctions.httpsCallable('createSnapPost');
      print(params.toJson());
      await callable.call(params.toJson());
    } on FirebaseFunctionsException catch (e) {
      throw firebaseFunctionsException(e);
    }
  }
}
