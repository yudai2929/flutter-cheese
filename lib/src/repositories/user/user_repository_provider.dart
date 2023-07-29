import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';
import 'package:cheese_client/src/repositories/user/user_repository.dart';
import 'package:cheese_client/src/repositories/user/user_repository_impl.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(FirebaseFunctionsApi(
      FirebaseFunctions.instanceFor(region: 'asia-northeast1')));
});
