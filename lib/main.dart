import 'package:cheese_client/firebase_options.dart';
import 'package:cheese_client/src/utils/firebase_connect_to_emlator.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  // NOTE: firebaseの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // NOTE: ローカル環境でfirebase emulatorを使うための設定
  // TODO: 環境変数で管理したい。
  const kDebugMode = true;

  if (kDebugMode) connectToEmulator();

  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const ProviderScope(child: MyApp()));
}
