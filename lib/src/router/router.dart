import 'package:cheese_client/src/components/layout/scaffold_with_navigation_bar.dart';
import 'package:cheese_client/src/pages/map/screen.dart';
import 'package:cheese_client/src/pages/sign_in/sign_in_page.dart';
import 'package:cheese_client/src/pages/sing_up/sing_up_page.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:go_router/go_router.dart';

import '../pages/home/screen.dart';

final goRouter = GoRouter(
  initialLocation: PageRoutes.singIn,
  routes: [
    GoRoute(
        path: PageRoutes.singIn,
        builder: (context, state) => const SignInPage()),
    GoRoute(path: PageRoutes.singUp, builder: (context, state) => SignUpPage()),
    GoRoute(
        path: PageRoutes.home,
        builder: (context, state) =>
            const ScaffoldWithNavigationBar(body: HomeScreen())),
    GoRoute(
        path: PageRoutes.map,
        builder: (context, state) =>
            const ScaffoldWithNavigationBar(body: MapScreen())),
  ],
);
