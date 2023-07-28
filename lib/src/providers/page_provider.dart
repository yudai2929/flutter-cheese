import 'package:cheese_client/src/router/page_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// StateNotifierを継承したクラス (状態管理用)
class PageNotifier extends StateNotifier<String> {
  PageNotifier() : super(PageRoutes.home) {
    _initSetPage();
  }

  void setPage(String page) {
    state = page;
  }

  void _initSetPage() {
    state = PageRoutes.home;
  }
}

// UserNotifierを提供するStateNotifierProvider
final pageProvider = StateNotifierProvider<PageNotifier, String>(
  (ref) => PageNotifier(),
);
