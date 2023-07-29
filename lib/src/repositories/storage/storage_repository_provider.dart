import 'package:cheese_client/src/repositories/storage/storage_repository.dart';
import 'package:cheese_client/src/repositories/storage/storage_repository_impl.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final storageRepositoryProvider = Provider<StorageRepository>(
    (ref) => StorageRepositoryImpl(FirebaseStorage.instance));
