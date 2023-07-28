import 'package:cheese_client/src/entities/user/user.dart';
import 'package:cheese_client/src/hooks/helper/use_query.dart';
import 'package:cheese_client/src/repositories/user/user_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

UseQueryResult<User> useFetchMyUser(WidgetRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final snapshot = useQuery(queryFn: () => userRepository.fetchMy());
  return snapshot;
}
