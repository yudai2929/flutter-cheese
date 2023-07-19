import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  List<String> routes = ['ルート1', 'ルート2', 'ルート3'];

  @override
  Widget build(BuildContext context) {
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
