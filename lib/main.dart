import 'package:cheese_client/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  // main 関数でも async が使えます
  WidgetsFlutterBinding.ensureInitialized(); // runApp 前に何かを実行したいときはこれが必要です。
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const ProviderScope(child: MyApp()));
}
