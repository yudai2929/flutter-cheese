import 'package:cheese_client/src/entities/snap_route/snap_route.dart';
import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';
import 'package:cheese_client/src/repositories/snap_route/params/snap_route_params.dart';
import 'package:cheese_client/src/repositories/snap_route/snap_route_repository.dart';

class SnapRouteRepositoryImpl implements SnapRouteRepository {
  final FirebaseFunctionsApi _firebaseFunctionsApi;

  SnapRouteRepositoryImpl(this._firebaseFunctionsApi);

  @override
  Future<SnapRoute> fetch(FetchSnapRouteParams params) async {
    final data = await _firebaseFunctionsApi.execute('fetchSnapRoute',
        param: params.toJson());
    return SnapRoute.fromJson(data);
  }

  @override
  Future<List<SnapRoute>> fetchMy() async {
    final List data = await _firebaseFunctionsApi.execute('fetchMySnapRoutes');
    return data.map<SnapRoute>((e) => SnapRoute.fromJson(e)).toList();
  }

  @override
  Future<void> create(CreateSnapRouteParams params) async {
    await _firebaseFunctionsApi.execute('createSnapRoute',
        param: params.toJson());
  }

  @override
  Future<void> update(UpdateSnapRouteParams params) async {
    await _firebaseFunctionsApi.execute('updateSnapRoute',
        param: params.toJson());
  }

  @override
  Future<void> delete(DeleteSnapRouteParams params) async {
    await _firebaseFunctionsApi.execute('deleteSnapRoute',
        param: params.toJson());
  }
}
