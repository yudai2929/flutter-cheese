// Outside of main, preferably at the end of the file
// Settings for firebase emulator connection
import 'dart:io';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future connectToEmulator() async {
  // Provide url to the emulator, localhost might not work on android emulator.
  final host = Platform.isAndroid ? '22.0.4.08' : 'localhost'; //#1
  // Provide port for all the local emulator prodcuts
  // #2
  const authPort = 9099;
  // const firestorePort = 8080;
  const functionsPort = 5001;
  const storagePort = 9199;

  // Just to make sure we're running locally
  print("I am running on emulator");

  // Instruct all the relevant firebase products to use the firebase emulator
  // # 3
  await FirebaseAuth.instance.useAuthEmulator(host, authPort);
  // FirebaseFirestore.instance.useFirestoreEmulator(host, firestorePort);
  FirebaseFunctions.instanceFor(region: 'asia-northeast1')
      .useFunctionsEmulator(host, functionsPort);
  await FirebaseStorage.instance.useStorageEmulator(host, storagePort);
}
