import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/repositories/user/params/user_params.dart';
import 'package:cheese_client/src/repositories/user/user_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

UseMutationResult<void, UpdateUserParams> useUpdateUser(WidgetRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);

  final mutation = useMutation(
    mutateFn: (UpdateUserParams params) => userRepository.update(params),
  );
  return mutation;
}
