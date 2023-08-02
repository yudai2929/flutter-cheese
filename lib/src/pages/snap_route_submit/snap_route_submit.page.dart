import 'package:cheese_client/src/components/ui/common/header.dart';
import 'package:cheese_client/src/hooks/domain/snap_route/use_create_snap_route.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/repositories/snap_route/params/snap_route_params.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:cheese_client/src/styles/custom_color.dart';
import 'package:cheese_client/src/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const favoriteIconPath = 'assets/images/favorite.png';
const mapIconPath = 'assets/images/map.png';

const dummyId = [
  'b3ab2d33-8917-4382-a7e8-37c2810fd192',
  '56dc4e7d-8ed7-4d3c-b86d-20c06f9d4070',
  '523447b9-6d92-4e70-8831-9f91018b7812',
  'cbab3969-e8ce-453c-abc7-a6f6a6df1ef4',
];

class SnapRouteSubmitPage extends HookConsumerWidget {
  const SnapRouteSubmitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutation = useCreateSnapRoute(ref);
    final titleController = useTextEditingController();
    Future<void> onBack() async {
      context.pop();
    }

    Future<void> onSubmit() async {
      final params = CreateSnapRouteParams(
          title: titleController.text, snapPostIds: dummyId);
      mutation.mutate(
          params: params,
          option: MutationOption(onSuccess: (_) {
            context.go(PageRoutes.route);
          }, onError: (e) {
            print(e);
          }));
    }

    return Scaffold(
        backgroundColor: CheeseColor.bgColor,
        appBar: Header(
          title: '投稿',
          leading: IconButton(
            onPressed: onBack,
            icon: const Icon(Icons.arrow_back_ios),
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
        body: SingleChildScrollView(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
                child: Column(
                  children: [
                    _titleForm(controller: titleController),
                    const SizedBox(height: 24.0),
                    _postSelectLabels(controller: titleController),
                    const SizedBox(height: 24.0),
                    const Divider(
                      height: 1,
                    )
                  ],
                ))));
  }

  Widget _titleForm({required TextEditingController controller}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'タイトル',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          _titleInputField(controller: controller),
        ],
      ),
    );
  }

  Widget _postSelectLabels({required TextEditingController controller}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'スポットを追加',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _postSelectLabel(text: "マップから選択", imagePath: favoriteIconPath),
              _postSelectLabel(text: "リストから選択", imagePath: mapIconPath),
            ],
          ),
        ],
      ),
    );
  }

  Widget _titleInputField({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      validator: (v) => FormValidator.validateRequired(v, 'タイトル'),
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'タイトル',
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget _postSelectLabel({required String text, required String imagePath}) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
      child: Column(children: [
        Image.asset(imagePath),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
