import 'package:cheese_client/src/exceptions/custom_exception.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/hooks/io/file_result.dart';
import 'package:cheese_client/src/repositories/storage/storage_repository_provider.dart';
import 'package:cheese_client/src/utils/file_picker.dart';
import 'package:cheese_client/src/utils/generate_id.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

UseMutationResult<FileResult?, String> useUploadFile(WidgetRef ref) {
  final storageRepository = ref.watch(storageRepositoryProvider);
  Future<FileResult?> mutateFn(String folderName) async {
    final file = await filePicker();
    if (file == null) return null;

    final path = '$folderName/${generateId()}';

    await storageRepository.upload(path, file);
    final url = await storageRepository.getUrl(path);
    return FileResult(path, url);
  }

  final snapshot = useMutation(mutateFn: mutateFn);
  return snapshot;
}
