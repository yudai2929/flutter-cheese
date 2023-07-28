import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../repositories/snap_post/snap_post_repository_provider.dart';
import '../../helper/use_mutation.dart';

UseMutationResult<void, CreateSnapPostParams> useCreateSnapPost(WidgetRef ref) {
  final snapPostRepository = ref.watch(snapPostRepositoryProvider);
  final snapshot = useMutation(
      mutateFn: (CreateSnapPostParams params) =>
          snapPostRepository.create(params));
  return snapshot;
}
