import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/entities/user_account.dart';
import 'package:cheese_client/src/repositories/auth/auth_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInParams {
  final String email;
  final String password;

  SignInParams({
    required this.email,
    required this.password,
  });
}

UseMutationResult<UserAccount?, SignInParams> useSignIn(WidgetRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  final mutation = useMutation(
    mutateFn: (SignInParams params) => authRepository.signIn(
      params.email,
      params.password,
    ),
  );

  return mutation;
}
