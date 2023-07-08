import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "ルート一覧"),
      body:
          const Center(child: Text('ルート一覧', style: TextStyle(fontSize: 32.0))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("ルート追加");
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
