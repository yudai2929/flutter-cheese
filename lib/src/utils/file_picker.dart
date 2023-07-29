import 'dart:io';

import 'package:file_picker/file_picker.dart';

Future<File?> filePicker() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.image,
  );
  if (result == null) return null;
  final path = result.files.single.path;
  if (path == null) return null;
  final file = File(path);
  return file;
}
