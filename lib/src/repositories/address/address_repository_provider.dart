import 'package:cheese_client/src/repositories/address/address_repository.dart';
import 'package:cheese_client/src/repositories/address/address_repository_impl.dart';
import 'package:cheese_client/src/repositories/firebase_base_functions_api.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepositoryImpl(FirebaseFunctionsApi(
      FirebaseFunctions.instanceFor(region: 'asia-northeast1')));
});
