import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/exceptions/custom_exception.dart';
import 'package:cheese_client/src/hooks/domain/auth/use_sign_up.dart';
import 'package:cheese_client/src/hooks/domain/user/use_create_user.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/providers/profile_provider.dart';
import 'package:cheese_client/src/repositories/user/params/user_params.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:cheese_client/src/styles/custom_color.dart';

import 'package:cheese_client/src/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const dummyImg = 'https://picsum.photos/200';

class ProfileRegistrationPage extends HookConsumerWidget {
  const ProfileRegistrationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final mutation = useCreateUser(ref);
    final formKey = useMemoized(GlobalKey<FormState>.new);

    Future<void> refreshUser() async {
      await ref.read(userProvider.notifier).refreshUser();
    }

    Future<void> onPressedSignUp() async {
      // if (!formKey.currentState!.validate()) return;
      await mutation.mutate(
          params:
              CreateUserParams(name: nameController.text, iconPath: dummyImg),
          option: MutationOption(
            onSuccess: (res) async {
              await refreshUser();
              if (context.mounted) context.go(PageRoutes.home);
            },
            onError: (e) async {
              if (e.toString() == CustomException.alreadyExists().toString()) {
                await refreshUser();
                if (context.mounted) context.go(PageRoutes.home);
              }
            },
          ));
    }

    return Scaffold(
        appBar: const Header(
          title: 'プロフィール作成',
        ),
        body: Container(
            padding: const EdgeInsets.all(32.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _nameInputField(controller: nameController),
                  const SizedBox(height: 16.0),
                  // TODO: 写真登録
                  const Text(
                    'プロフィールは後からでも変更できます。',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: onPressedSignUp,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12.0),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("プロフィール作成",
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ],
              ),
            )));
  }

  Widget _nameInputField({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      validator: FormValidator.validateEmail,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'ニックネーム',
        fillColor: CheeseColor.input,
        filled: true,
      ),
    );
  }
}
