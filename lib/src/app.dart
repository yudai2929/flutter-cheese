import 'package:cheese_client/src/constants/route.dart';
import 'package:cheese_client/src/screens/main_router.dart';
import 'package:cheese_client/src/screens/sign_in/screen.dart';
import 'package:cheese_client/src/screens/sing_up/screen.dart';
import 'package:cheese_client/src/styles/material_color.dart';
import 'package:flutter/material.dart';

import 'screens/submit.dart';
import 'screens/my_page/screen.dart';
import 'screens/map.dart';
import 'screens/home/screem.dart';
import 'screens/route.dart';

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
        ScreenRoutes.singIn: (context) => const SignInScreen(),
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
    return isLoggedIn ? const MainRouter() : const SignInScreen();
  }
}
