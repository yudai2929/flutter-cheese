import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/hooks/helper/use_query.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../repositories/snap_post/snap_post_repository_provider.dart';

UseQueryResult<List<SnapPost>> useFetchMySnapPosts(WidgetRef ref) {
  final snapPostRepository = ref.watch(snapPostRepositoryProvider);
  final snapshot = useQuery(queryFn: () => snapPostRepository.fetchMy());
  return snapshot;
}
