// ユーザーのログイン状態を維持するプロバイダー
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ユーザーのログイン状態を維持するプロバイダー
final authProvider = StreamProvider<User?>((ref) {
  final user = FirebaseAuth.instance.authStateChanges();
  return user;
});
