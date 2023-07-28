import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/hooks/domain/snap_post/use_cureate_snap_post.dart';
import 'package:cheese_client/src/hooks/helper/use_form_key.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/repositories/snap_post/params/snap_post_params.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:cheese_client/src/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final List<String> list = <String>['カテゴリー', 'Two', 'Three', 'Four'];

class SnapPostSubmitPage extends HookConsumerWidget {
  const SnapPostSubmitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dropdownValue = useState(list.first);
    final mutation = useCreateSnapPost(ref);
    final titleController = useTextEditingController();
    final commentController = useTextEditingController();
    final formKey = useFormKey();

    Future<void> onSubmit() async {
      if (!formKey.currentState!.validate()) return;
      final params = CreateSnapPostParams(
        title: titleController.text,
        comment: commentController.text,
        longitude: 0,
        latitude: 0,
        postImages: [],
        tags: [],
      );
      await mutation.mutate(
          params: params,
          option: MutationOption(
              onSuccess: (_) {
                context.go(PageRoutes.home);
              },
              onError: (e) {}));
    }

    Future<void> onBack() async {
      context.pop();
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Header(
          title: '投稿',
          leading: IconButton(
            onPressed: onBack,
            icon: const Icon(Icons.close),
            color: Colors.black,
          ),
          actions: [
            TextButton(
              onPressed: onSubmit,
              child: const Text('保存',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            )
          ],
        ),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              _titleInputField(titleController),
              _placeForm(),
              _categoryPullDown(
                  list: list,
                  selectedValue: dropdownValue.value,
                  onChanged: (String? value) {
                    dropdownValue.value = value!;
                  }),
              _commentInputField(commentController),
              const SizedBox(height: 48),
              _uploadButton(onPressed: () {})
            ],
          ),
        ));
  }

  Widget _titleInputField(TextEditingController controller) {
    return TextFormField(
      controller: controller,
      validator: (value) => FormValidator.validateRequired(value, 'タイトル'),
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'タイトル',
        contentPadding: EdgeInsets.all(16.0),
      ),
    );
  }

  Widget _commentInputField(TextEditingController controller) {
    return TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'コメント',
          contentPadding: EdgeInsets.all(16.0),
        ),
        maxLines: 4);
  }

  Widget _placeForm() {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: 68,
        child: InkWell(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("場所",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.black,
              )
            ],
          ),
          onTap: () {},
        ));
  }

  Widget _categoryPullDown(
      {required List<String> list,
      required Function(String?) onChanged,
      required String selectedValue}) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: 68,
        child: DropdownButton<String>(
          value: selectedValue,
          iconSize: 24,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_right_outlined,
              color: Colors.black),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          underline: Container(
            height: 0,
          ),
          onChanged: onChanged,
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ));
  }

  Widget _uploadButton({required VoidCallback onPressed}) {
    return OutlinedButton(
        // まるくする
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.only(
              top: 8.0, bottom: 8.0, left: 32.0, right: 32.0),
          side: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        onPressed: onPressed,
        child: const Text('写真を追加',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )));
  }
}
