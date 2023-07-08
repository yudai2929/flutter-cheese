import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';

class SubmitScreen extends StatelessWidget {
  const SubmitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: '投稿',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
          color: Colors.black,
        ),
        actions: const [
          TextButton(
            onPressed: null,
            child: Text('保存',
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          )
        ],
      ),
      body: const Center(child: Text('投稿画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
