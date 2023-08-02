import 'package:cheese_client/src/repositories/snap_route/params/snap_route_params.dart';

import '../../entities/snap_route/snap_route.dart';

abstract class SnapRouteRepository {
  Future<SnapRoute> fetch(FetchSnapRouteParams params);
  Future<List<SnapRoute>> fetchMy();
  Future<void> create(CreateSnapRouteParams params);
  Future<void> update(UpdateSnapRouteParams params);
  Future<void> delete(DeleteSnapRouteParams params);
}
