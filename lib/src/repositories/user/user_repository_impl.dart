import 'package:cheese_client/src/entities/user/user.dart';
import 'package:cheese_client/src/repositories/user/params/user_params.dart';
import 'package:cheese_client/src/repositories/user/user_repository.dart';
import 'package:cheese_client/src/utils/firebase_exception.dart';
import 'package:cloud_functions/cloud_functions.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseFunctions _firebaseFunctions;

  UserRepositoryImpl(this._firebaseFunctions);

  @override
  Future<User> fetchMy() async {
    try {
      final HttpsCallable callable =
          _firebaseFunctions.httpsCallable('fetchMyUser');
      final res = await callable.call();
      return User.fromJson(res.data);
    } on FirebaseFunctionsException catch (e) {
      throw firebaseFunctionsException(e);
    }
  }

  @override
  Future<void> create(CreateUserParams params) async {
    try {
      final HttpsCallable callable =
          _firebaseFunctions.httpsCallable('createUser');
      await callable.call(params.toJson());
    } on FirebaseFunctionsException catch (e) {
      throw firebaseFunctionsException(e);
    }
  }

  @override
  Future<void> update(UpdateUserParams params) async {
    try {
      final HttpsCallable callable =
          _firebaseFunctions.httpsCallable('updateUser');
      await callable.call(params.toJson());
    } on FirebaseFunctionsException catch (e) {
      throw firebaseFunctionsException(e);
    }
  }
}
