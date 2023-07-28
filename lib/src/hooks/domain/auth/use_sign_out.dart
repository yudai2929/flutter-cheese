import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/repositories/auth/auth_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpParams {
  final String email;
  final String password;

  SignUpParams({
    required this.email,
    required this.password,
  });
}

UseMutationResult<void, void> useSignUp(WidgetRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  final mutation = useMutation(
    mutateFn: (_) => authRepository.signOut(),
  );

  return mutation;
}
