import 'package:cheese_client/src/repositories/address/params/search_address_params.dart';

abstract class AddressRepository {
  Future<String> search(SearchAddressParams params);
}
