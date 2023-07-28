import 'package:cheese_client/src/repositories/auth/auth_repository.dart';
import 'package:cheese_client/src/repositories/auth/auth_repository_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(FirebaseAuth.instance));
