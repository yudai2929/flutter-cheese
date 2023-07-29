import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/entities/user/user.dart';
import 'package:cheese_client/src/hooks/domain/snap_post/use_fetch_snap_post.dart';
import 'package:cheese_client/src/hooks/domain/user/use_fetch_user.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileResult {
  final User? user;
  final List<SnapPost> mySnapPosts;
  final List<SnapPost> favoriteSnapPosts;
  final bool isLoading;
  final bool hasError;

  ProfileResult({
    required this.user,
    required this.mySnapPosts,
    required this.favoriteSnapPosts,
    required this.isLoading,
    required this.hasError,
  });
}

ProfileResult useFetchProfile(WidgetRef ref) {
  final userSnapshot = useFetchMyUser(ref);
  final snapPostSnapshot = useFetchMySnapPosts(ref);
  final isLoading = useMemoized(
      () => userSnapshot.isLoading || snapPostSnapshot.isLoading,
      [userSnapshot, snapPostSnapshot]);
  final hasError = useMemoized(
      () => userSnapshot.hasError || snapPostSnapshot.hasError,
      [userSnapshot, snapPostSnapshot]);
  return ProfileResult(
    user: userSnapshot.data,
    mySnapPosts: snapPostSnapshot.data ?? [],
    favoriteSnapPosts: [],
    isLoading: isLoading,
    hasError: hasError,
  );
}