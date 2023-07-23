import 'package:cheese_client/src/router/router.dart';
import 'package:cheese_client/src/styles/material_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final goRouter = useProvider(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Cheese',
      theme: ThemeData(
        primarySwatch: primeColor,
      ),
    );
  }
}
