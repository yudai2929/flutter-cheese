import 'package:cheese_client/src/components/ui/bottom_navigation.dart';
import 'package:cheese_client/src/constants/route.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          const Center(child: Text('ホーム画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
