import 'package:cheese_client/src/entities/user/user.dart';
import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';
import 'package:cheese_client/src/repositories/user/params/user_params.dart';
import 'package:cheese_client/src/repositories/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseFunctionsApi _firebaseFunctionsApi;

  UserRepositoryImpl(this._firebaseFunctionsApi);

  @override
  Future<User> fetchMy() async {
    final res = await _firebaseFunctionsApi.execute('fetchMyUser');
    return User.fromJson(res);
  }

  @override
  Future<void> create(CreateUserParams params) async {
    await _firebaseFunctionsApi.execute('createUser', param: params.toJson());
  }

  @override
  Future<void> update(UpdateUserParams params) async {
    await _firebaseFunctionsApi.execute('updateUser', param: params.toJson());
  }
}
