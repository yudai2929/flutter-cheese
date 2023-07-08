import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(title: "マイページ"),
      body: Center(child: Text('マイページ画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
