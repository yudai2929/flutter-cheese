import 'package:flutter/material.dart';

class SignInModal extends StatelessWidget {
  const SignInModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 540,
        child: Container(
          padding: const EdgeInsets.all(32.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TODO: ログインのテキストを真ん中に寄せる
                  const Text(
                    "ログイン",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 32.0),
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
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "パスワードを忘れた方",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 16.0),
              // TODO: ボタンコンポーネントの共通化
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12.0),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("ログイン",
                          style: TextStyle(fontWeight: FontWeight.bold)))),
            ],
          ),
        ));
  }
}
