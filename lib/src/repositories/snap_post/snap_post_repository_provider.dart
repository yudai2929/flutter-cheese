import 'package:cheese_client/src/repositories/snap_post/snap_post_repository.dart';
import 'package:cheese_client/src/repositories/snap_post/snap_post_repository_impl.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final snapPostRepositoryProvider = Provider<SnapPostRepository>((ref) {
  return SnapPostRepositoryImpl(
      FirebaseFunctions.instanceFor(region: 'asia-northeast1'));
});
