import 'package:cheese_client/src/repositories/address/address_repository.dart';
import 'package:cheese_client/src/repositories/address/params/search_address_params.dart';
import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';

class AddressRepositoryImpl implements AddressRepository {
  final FirebaseFunctionsApi _firebaseFunctionsApi;

  AddressRepositoryImpl(this._firebaseFunctionsApi);

  @override
  Future<String> search(SearchAddressParams params) async {
    final result = await _firebaseFunctionsApi.execute('searchAddress',
        param: params.toJson());
    return result['address'] as String;
  }
}
