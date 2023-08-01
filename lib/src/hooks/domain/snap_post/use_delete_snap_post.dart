import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../repositories/snap_post/snap_post_repository_provider.dart';
import '../../helper/use_mutation.dart';

UseMutationResult<void, DeleteSnapPostParams> useDeleteSnapPost(WidgetRef ref) {
  final snapPostRepository = ref.watch(snapPostRepositoryProvider);
  final snapshot = useMutation(
      mutateFn: (DeleteSnapPostParams params) =>
          snapPostRepository.delete(params));
  return snapshot;
}
