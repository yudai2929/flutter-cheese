import 'package:cheese_client/src/models/user_account.dart';
import 'package:cheese_client/src/repositories/auth/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../exceptions/auth_exception.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserAccount?> signIn(String email, String password) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = userCredential.user;
      if (user == null) return null;
      return UserAccount(userId: user.uid, email: user.email!);
    } on FirebaseAuthException catch (e) {
      _signInError(e);
    }
    return null;
  }

  @override
  Future<UserAccount?> signUp(String email, String password) async {
    try {
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
    } on FirebaseAuthException catch (e) {
      _signUpError(e);
    }
    return null;
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

  void _signInError(FirebaseAuthException error) {
    if (error.code == 'user-not-found') {
      throw AuthException.userNotFound();
    } else if (error.code == 'wrong-password') {
      throw AuthException.wrongPassword();
    } else if (error.code == 'user-disabled') {
      throw AuthException.userDisabled();
    } else if (error.code == 'too-many-requests') {
      throw AuthException.tooManyRequests();
    } else {
      throw AuthException.unknown();
    }
  }

  void _signUpError(FirebaseAuthException error) {
    if (error.code == 'weak-password') {
      throw AuthException.weakPassword();
    } else if (error.code == 'email-already-in-use') {
      throw AuthException.emailAlreadyInUse();
    } else if (error.code == 'too-many-requests') {
      throw AuthException.tooManyRequests();
    } else {
      throw AuthException.unknown();
    }
  }
}
