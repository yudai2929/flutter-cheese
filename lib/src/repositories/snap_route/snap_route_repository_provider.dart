import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';
import 'package:cheese_client/src/repositories/snap_route/snap_route_repository.dart';
import 'package:cheese_client/src/repositories/snap_route/snap_route_repository_impl.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final snapRouteRepositoryProvider = Provider<SnapRouteRepository>((ref) {
  return SnapRouteRepositoryImpl(FirebaseFunctionsApi(
      FirebaseFunctions.instanceFor(region: 'asia-northeast1')));
});
