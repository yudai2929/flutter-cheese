import 'dart:io';

import 'package:cheese_client/src/hooks/domain/auth/use_sign_in.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/pages/sign_in/sing_in_modal.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

const logoPath = 'assets/images/cheese_logo.png';

class SignInPage extends HookWidget {
  const SignInPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final mutation = useMutationSignIn();
    final errorText = useState('');

    Future<void> onPressedLogin() async {
      mutation.mutate(
          params: SignInParams(
              email: emailController.text, password: passwordController.text),
          option: MutationOption(
            onSuccess: (res) {
              context.go(PageRoutes.home);
            },
            onError: (e) {
              errorText.value = e.toString();
            },
          ));
    }

    void clearErrorText() {
      errorText.value = '';
    }

    void onPressedClose() {
      clearErrorText();
      context.pop();
    }

// TODO: stateが更新されても再ビルドされない
    void showModal(BuildContext context) {
      showModalBottomSheet(
          context: context,
          // NOTE: trueにしないと、Containerのheightが反映されない
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
          builder: (BuildContext context) {
            return SignInModal(
              errorText: errorText.value,
              onPressedLogin: onPressedLogin,
              onPressedClose: onPressedClose,
              emailController: emailController,
              passwordController: passwordController,
            );
          });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(logoPath, width: 150),
              const Text("スワイプしてお気に入りの写真を探してみよう!",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 64.0),
              // TODO: ボタンコンポーネントの共通化
              SizedBox(
                  width: double.infinity,
                  child: _signUpButton(
                      onPressed: () => context.push(PageRoutes.singUp))),
              const SizedBox(height: 16.0),
              // TODO: ボタンコンポーネントの共通化
              SizedBox(
                  width: double.infinity,
                  child: _singInButton(onPressed: () => showModal(context))),
            ],
          )),
        ));
  }

  Widget _signUpButton({required VoidCallback onPressed}) {
    return SizedBox(
        width: double.infinity,
        child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(12.0),
                foregroundColor: Colors.black,
                elevation: 0,
                backgroundColor: Colors.grey[100]),
            child: const Text("新規登録",
                style: TextStyle(fontWeight: FontWeight.bold))));
  }

  Widget _singInButton({required VoidCallback onPressed}) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12.0),
              shape: const StadiumBorder(),
            ),
            child: const Text("ログイン",
                style: TextStyle(fontWeight: FontWeight.bold))));
  }
}
