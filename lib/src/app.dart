import 'package:cheese_client/src/components/ui/bottom_navigation.dart';
import 'package:cheese_client/src/router/router.dart';
import 'package:cheese_client/src/styles/material_color.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Cheese',
      theme: ThemeData(
        primarySwatch: primeColor,
      ),
    );
  }
}
