import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/constants/route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(
          title: '新規登録',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              // TODO: 色のハードコーディングをやめる
              TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'メールアドレス',
                  fillColor: Color.fromARGB(255, 245, 245, 245),
                  filled: true,
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                // TODO: 色のハードコーディングをやめる
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'パスワード',
                  fillColor: Color.fromARGB(255, 245, 245, 245),
                  filled: true,
                ),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: '登録すると、',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '利用規約',
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('利用規約を表示する');
                        },
                    ),
                    const TextSpan(
                      text: ' および ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'プライバシーポリシー',
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('プライバシーポリシーを表示する');
                        },
                    ),
                    const TextSpan(
                      text: ' に同意したとみなされます。',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              // TODO: ボタンコンポーネントの共通化
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenRoutes.index);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12.0),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("新規登録",
                          style: TextStyle(fontWeight: FontWeight.bold)))),
            ],
          ),
        ));
  }
}
