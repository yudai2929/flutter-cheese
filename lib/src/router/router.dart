import 'package:cheese_client/src/components/layout/scaffold_with_navigation_bar.dart';
import 'package:cheese_client/src/pages/map/screen.dart';
import 'package:cheese_client/src/pages/sign_in/sign_in_page.dart';
import 'package:cheese_client/src/pages/sing_up/sing_up_page.dart';
import 'package:cheese_client/src/providers/auth_provider.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pages/home/screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  final goRouter = GoRouter(
      initialLocation: PageRoutes.singIn,
      routes: [
        GoRoute(
            path: PageRoutes.singIn,
            builder: (context, state) => const SignInPage()),
        GoRoute(
            path: PageRoutes.singUp,
            builder: (context, state) => const SignUpPage()),
        GoRoute(
            path: PageRoutes.home,
            builder: (context, state) =>
                const ScaffoldWithNavigationBar(body: HomeScreen())),
        GoRoute(
            path: PageRoutes.map,
            builder: (context, state) =>
                const ScaffoldWithNavigationBar(body: MapScreen())),
      ],

// リダイレクトの処理
      redirect: (BuildContext context, GoRouterState state) {
        final isLoggedIn = authState.data?.value != null;

        final isSingUpPage = state.location == PageRoutes.singUp;

        final isExistProfile = true;

        if (!isLoggedIn && !isSingUpPage) {
          return PageRoutes.singIn;
        }

        if (isLoggedIn && !isExistProfile) {
          // TODO: プロフィール登録ページに遷移する
          // return PageRoutes.singUp;
        }
      });
  return goRouter;
});
