import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailBottomSheet extends HookConsumerWidget {
  final VoidCallback onPressedEdit;
  final VoidCallback onPressedDelete;
  const DetailBottomSheet({
    Key? key,
    required this.onPressedEdit,
    required this.onPressedDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        padding: const EdgeInsets.only(top: 32.0),
        height: 144,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: onPressedEdit,
              child: Container(
                padding: const EdgeInsets.only(left: 32.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text("投稿を編集",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 8.0,
            ),
            InkWell(
              onTap: onPressedDelete,
              child: Container(
                padding: const EdgeInsets.only(left: 32.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text("投稿を削除",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
