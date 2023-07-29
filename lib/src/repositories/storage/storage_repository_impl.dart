import 'dart:io';

import 'package:cheese_client/src/repositories/storage/storage_repository.dart';
import 'package:cheese_client/src/utils/firebase/firebase_exception.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageRepositoryImpl implements StorageRepository {
  final FirebaseStorage _firebaseStorage;

  StorageRepositoryImpl(this._firebaseStorage);

  @override
  Future<void> upload(String path, File file) async {
    final ref = _firebaseStorage.ref(path);
    try {
      await ref.putFile(file);
    } on FirebaseException catch (e) {
      throw firebaseStorageException(e);
    }
  }

  @override
  Future<String> getUrl(String path) async {
    final ref = _firebaseStorage.ref(path);
    try {
      final url = await ref.getDownloadURL();
      return url;
    } on FirebaseException catch (e) {
      throw firebaseStorageException(e);
    }
  }

  @override
  Future<void> delete(String path) async {
    final ref = _firebaseStorage.ref(path);
    try {
      await ref.delete();
    } on FirebaseException catch (e) {
      throw firebaseStorageException(e);
    }
  }
}
