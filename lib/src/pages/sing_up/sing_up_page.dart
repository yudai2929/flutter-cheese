import 'package:cheese_client/src/components/ui/common/header.dart';
import 'package:cheese_client/src/hooks/domain/auth/use_sign_up.dart';
import 'package:cheese_client/src/hooks/helper/use_form_key.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:cheese_client/src/styles/custom_color.dart';

import 'package:cheese_client/src/utils/form_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final mutation = useSignUp(ref);
    final formKey = useFormKey();

    Future<void> onPressedSignUp() async {
      if (!formKey.currentState!.validate()) return;
      await mutation.mutate(
          params: SignUpParams(
              email: emailController.text, password: passwordController.text),
          option: MutationOption(
            onSuccess: (_) {
              context.go(PageRoutes.profileRegistration);
            },
            onError: (e) {
              print(e);
            },
          ));
    }

    return Scaffold(
        appBar: Header(
          title: '新規登録',
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(32.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  _emailInputField(controller: emailController),
                  const SizedBox(height: 16.0),
                  _passwordInputField(controller: passwordController),
                  const SizedBox(height: 16.0),
                  _ruleAndPrivacyText(
                    onTapPrivacy: () => {},
                    onTapRule: () => {},
                  ),
                  const SizedBox(height: 16.0),
                  // TODO: ボタンコンポーネントの共通化
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: onPressedSignUp,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12.0),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("新規登録",
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ],
              ),
            )));
  }

  Widget _emailInputField({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      validator: FormValidator.validateEmail,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'メールアドレス',
        fillColor: CheeseColor.input,
        filled: true,
      ),
    );
  }

  Widget _passwordInputField({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      validator: FormValidator.validatePassword,
      obscureText: true,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'パスワード',
        fillColor: CheeseColor.input,
        filled: true,
      ),
    );
  }

// TODO: 利用規約とプライバシーポリシーのリンク先を設定する
  Widget _ruleAndPrivacyText(
      {required VoidCallback onTapRule, required VoidCallback onTapPrivacy}) {
    return RichText(
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
              recognizer: TapGestureRecognizer()..onTap = onTapRule),
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
              recognizer: TapGestureRecognizer()..onTap = onTapPrivacy),
          const TextSpan(
            text: ' に同意したとみなされます。',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
