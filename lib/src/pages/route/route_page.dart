import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> routes = ['ルート1', 'ルート2', 'ルート3'];

class RoutePage extends HookConsumerWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const Header(title: "ルート一覧"),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(routes[index]),
            onTap: () {
              // Navigator.pushNamed(context, '/route/${routes[index]}');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, '/route/new');
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
    );
  }
}
