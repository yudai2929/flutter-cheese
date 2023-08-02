import 'package:cheese_client/src/entities/snap_route/snap_route.dart';
import 'package:cheese_client/src/hooks/helper/use_query.dart';
import 'package:cheese_client/src/repositories/snap_route/params/snap_route_params.dart';
import 'package:cheese_client/src/repositories/snap_route/snap_route_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

UseQueryResult<List<SnapRoute>> useFetchMySnapRoutes(WidgetRef ref) {
  final snapRouteRepository = ref.watch(snapRouteRepositoryProvider);
  final snapshot = useQuery(queryFn: () => snapRouteRepository.fetchMy());
  return snapshot;
}

UseQueryResult<SnapRoute> useFetchSnapRoute(
    WidgetRef ref, FetchSnapRouteParams params) {
  final snapRouteRepository = ref.watch(snapRouteRepositoryProvider);
  final snapshot = useQuery(queryFn: () => snapRouteRepository.fetch(params));
  return snapshot;
}
