import 'package:cheese_client/src/entities/user_account.dart';

abstract class AuthRepository {
  Future<UserAccount?> signIn(String email, String password);
  Future<UserAccount?> signUp(String email, String password);
  Future<UserAccount?> getAccount();
  Future<void> signOut();
}
