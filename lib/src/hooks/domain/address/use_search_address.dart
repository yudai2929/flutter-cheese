import 'package:cheese_client/src/hooks/helper/use_query.dart';
import 'package:cheese_client/src/repositories/address/params/search_address_params.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../repositories/address/address_repository_provider.dart';
import '../../helper/use_mutation.dart';

// HACK: 検索系の処理はuseQueryを使いたい
UseMutationResult<String, SearchAddressParams> useSearchAddress(WidgetRef ref) {
  final addressRepository = ref.watch(addressRepositoryProvider);

  return useMutation(
    mutateFn: (SearchAddressParams params) => addressRepository.search(params),
  );
}
