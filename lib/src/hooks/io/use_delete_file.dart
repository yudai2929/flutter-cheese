import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/repositories/storage/storage_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

UseMutationResult<void, String> useDeleteFile(WidgetRef ref) {
  final storageRepository = ref.watch(storageRepositoryProvider);
  final snapshot =
      useMutation(mutateFn: (String path) => storageRepository.delete(path));
  return snapshot;
}
