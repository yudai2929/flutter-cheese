import 'package:cheese_client/src/models/user_account.dart';
import 'package:cheese_client/src/repositories/auth/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserAccount?> signIn(String email, String password) async {
    final UserCredential userCredential =
        await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final User? user = userCredential.user;
    if (user == null) {
      return null;
    }
    return UserAccount(userId: user.uid, email: user.email!);
  }

  @override
  Future<UserAccount?> signUp(String email, String password) async {
    final UserCredential userCredential =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final User? user = userCredential.user;
    if (user == null) {
      return null;
    }
    return UserAccount(userId: user.uid, email: user.email!);
  }

  @override
  Future<UserAccount?> getAccount() async {
    final User? user = _firebaseAuth.currentUser;
    if (user == null) {
      return null;
    }
    return UserAccount(userId: user.uid, email: user.email!);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
