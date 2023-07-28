import 'package:cheese_client/src/entities/user/user.dart';
import 'package:cheese_client/src/repositories/user/user_repository.dart';
import 'package:cheese_client/src/repositories/user/user_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// StateNotifierを継承したクラス (状態管理用)
class UserNotifier extends StateNotifier<User?> {
  final UserRepository _userRepository;

  UserNotifier(this._userRepository) : super(null) {
    fetchUser();
  }

  // APIからデータをフェッチするメソッド
  Future<void> fetchUser() async {
    try {
      final user = await _userRepository.fetchMy();
      state = user;
    } catch (e) {
      state = null;
    }
  }

  // データをリフレッシュするメソッド
  Future<void> refreshUser() async {
    await fetchUser();
  }
}

// UserNotifierを提供するStateNotifierProvider
final userProvider = StateNotifierProvider<UserNotifier, User?>(
  (ref) => UserNotifier(ref.watch(userRepositoryProvider)),
);
