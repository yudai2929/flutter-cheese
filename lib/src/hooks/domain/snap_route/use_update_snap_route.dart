import 'package:cheese_client/src/repositories/snap_route/params/snap_route_params.dart';
import 'package:cheese_client/src/repositories/snap_route/snap_route_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../helper/use_mutation.dart';

UseMutationResult<void, UpdateSnapRouteParams> useUpdateSnapRoute(
    WidgetRef ref) {
  final snapRouteRepository = ref.watch(snapRouteRepositoryProvider);
  final snapshot = useMutation(
      mutateFn: (UpdateSnapRouteParams params) =>
          snapRouteRepository.update(params));
  return snapshot;
}
