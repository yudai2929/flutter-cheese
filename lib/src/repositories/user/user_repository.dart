import 'package:cheese_client/src/entities/user/user.dart';
import 'package:cheese_client/src/repositories/user/params/user_params.dart';

abstract class UserRepository {
  Future<User> fetchMy();
  Future<void> create(CreateUserParams params);
  Future<void> update(UpdateUserParams params);
}
