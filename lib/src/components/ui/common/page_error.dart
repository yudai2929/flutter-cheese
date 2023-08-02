import 'package:cheese_client/src/constants/logo_image_path.dart';
import 'package:flutter/material.dart';

class PageError extends StatelessWidget {
  const PageError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(
        //   logoPath,
        //   width: 150,
        // ),
        const SizedBox(height: 16.0),
        const Text(
          'エラーが発生しました。',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ],
    ));
  }
}
