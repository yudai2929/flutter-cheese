import 'dart:io';

abstract class StorageRepository {
  Future<void> upload(String path, File file);
  Future<String> getUrl(String path);
  Future<void> delete(String path);
}
