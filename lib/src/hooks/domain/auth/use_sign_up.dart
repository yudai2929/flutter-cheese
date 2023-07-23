import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/models/user_account.dart';
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

UseMutationResult<UserAccount?, SignUpParams> useMutationSignUp() {
  final authRepository = useProvider(authRepositoryProvider);

  final mutation = useMutation(
    mutateFn: (SignUpParams params) => authRepository.signUp(
      params.email,
      params.password,
    ),
  );
  return mutation;
}
