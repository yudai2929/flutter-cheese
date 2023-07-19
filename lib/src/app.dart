import 'package:cheese_client/src/constants/route.dart';
import 'package:cheese_client/src/pages/main_router.dart';
import 'package:cheese_client/src/pages/sign_in/sign_in_page.dart';
import 'package:cheese_client/src/pages/sing_up/screen.dart';
import 'package:cheese_client/src/styles/material_color.dart';
import 'package:flutter/material.dart';

import 'pages/submit/screen.dart';
import 'pages/my_page/screen.dart';
import 'pages/map/screen.dart';
import 'pages/home/screem.dart';
import 'pages/route/screnn.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primeColor,
      ),
      home: const MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenRoutes.singIn,
      routes: <String, WidgetBuilder>{
        ScreenRoutes.singIn: (context) => const SignInPage(),
        ScreenRoutes.singUp: (context) => const SignUpScreen(),
        ScreenRoutes.index: (context) => const MainRouter(),
        ScreenRoutes.home: (context) => const HomeScreen(),
        ScreenRoutes.map: (context) => const MapScreen(),
        ScreenRoutes.submit: (context) => const SubmitScreen(),
        ScreenRoutes.route: (context) => const RouteScreen(),
        ScreenRoutes.myPage: (context) => const MyPageScreen(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final isLoggedIn = false;

  // TODO: ルーティング周りのリファクタリング
  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? const MainRouter() : const SignInPage();
  }
}
