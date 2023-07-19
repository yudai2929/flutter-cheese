import 'package:flutter/material.dart';

import '../../utils/form_validator.dart';

// TODO: 色のハードコーディングをやめる
const inputFieldColor = Color.fromARGB(255, 245, 245, 245);

class SignInModal extends StatelessWidget {
  final VoidCallback onPressedLogin;
  final Function(String) onChangedEmail;
  final Function(String) onChangedPassword;

  final _formKey = GlobalKey<FormState>();

  SignInModal({
    Key? key,
    required this.onPressedLogin,
    required this.onChangedEmail,
    required this.onChangedPassword,
  }) : super(key: key);

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
              _header(onPressedClose: () => Navigator.pop(context)),
              const Divider(
                thickness: 1,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 32.0),
                      _emailInputField(),
                      const SizedBox(height: 16.0),
                      _passwordInputField(),
                      const SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "パスワードを忘れた方",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      // TODO: ボタンコンポーネントの共通化
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  onPressedLogin();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(12.0),
                                shape: const StadiumBorder(),
                              ),
                              child: const Text("ログイン",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)))),
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget _header({required VoidCallback onPressedClose}) {
    return Row(
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
          onPressed: onPressedClose,
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _emailInputField() {
    return TextFormField(
      validator: FormValidator.validateEmail,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'メールアドレス',
        fillColor: inputFieldColor,
        filled: true,
      ),
    );
  }

  Widget _passwordInputField() {
    return TextFormField(
      validator: FormValidator.validatePassword,
      obscureText: true,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'パスワード',
        fillColor: inputFieldColor,
        filled: true,
      ),
    );
  }
}
