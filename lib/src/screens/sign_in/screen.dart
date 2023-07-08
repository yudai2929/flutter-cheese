import 'package:cheese_client/src/screens/sign_in/sing_in_modal.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  final _logoPath = 'assets/images/cheese_logo.png';

  void _showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        // NOTE: trueにしないと、Containerのheightが反映されない
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
        builder: (BuildContext context) {
          return const SignInModal();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(_logoPath, width: 150),
              const Text("スワイプしてお気に入りの写真を探してみよう!",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 64.0),
              // TODO: ボタンコンポーネントの共通化
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/sing_up');
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.all(12.0),
                          foregroundColor: Colors.black,
                          elevation: 0,
                          backgroundColor: Colors.grey[100]),
                      child: const Text("新規登録",
                          style: TextStyle(fontWeight: FontWeight.bold)))),
              const SizedBox(height: 16.0),
              // TODO: ボタンコンポーネントの共通化
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        _showModal(context);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12.0),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("ログイン",
                          style: TextStyle(fontWeight: FontWeight.bold)))),
            ],
          )),
        ));
  }
}
