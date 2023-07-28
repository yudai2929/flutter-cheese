import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/hooks/domain/user/use_fetch_user.dart';
import 'package:cheese_client/src/pages/profile/snap_post_card.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

const dummyImg = 'https://picsum.photos/200';
const userName = 'ユーザー名';
const dummyTitle = 'タイトル';
const dummyTag = 'タグ';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = useFetchMyUser(ref);

    return Scaffold(
        appBar: const Header(title: "マイページ"),
        backgroundColor: Colors.white,
        // NOTE: 画面全体をスクロースするように設定
        body: SingleChildScrollView(
          child: Column(children: [
            _profile(userName: userName, imageUrl: dummyImg),
            const SizedBox(height: 8.0),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[100],
                  foregroundColor: Colors.black,
                  elevation: 0,
                ),
                child: const Text(
                  "プロフィール編集・設定",
                )),
            const SizedBox(height: 16.0),
            _tabButtons(
              onPressedMine: () {},
              onPressedLike: () {},
            ),
            GridView.count(
              // NOTE: GridViewの中でのアイテムのサイズを指定
              childAspectRatio: 0.7,
              // NOTE: GridViewの中でのアイテムの数を指定
              crossAxisCount: 2,
              shrinkWrap: true,

              // NOTE: GridViewのスクロールを無効化
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                SnapPostCard(
                  title: dummyTitle,
                  tag: dummyTag,
                  imageUrl: dummyImg,
                ),
                SnapPostCard(
                  title: dummyTitle,
                  tag: dummyTag,
                  imageUrl: dummyImg,
                ),
                SnapPostCard(
                  title: dummyTitle,
                  tag: dummyTag,
                  imageUrl: dummyImg,
                ),
                SnapPostCard(
                  title: dummyTitle,
                  tag: dummyTag,
                  imageUrl: dummyImg,
                ),
                SnapPostCard(
                  title: dummyTitle,
                  tag: dummyTag,
                  imageUrl: dummyImg,
                ),
                // )
              ],
            ),
          ]),
        ));
  }

  Widget _profile({required String userName, required String imageUrl}) {
    return Column(children: [
      const SizedBox(height: 16.0),
      CircleAvatar(radius: 42, backgroundImage: NetworkImage(imageUrl)),
      const SizedBox(height: 16.0),
      Text(
        userName,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ]);
  }

  Widget _tabButtons(
      {required VoidCallback onPressedMine,
      required VoidCallback onPressedLike}) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressedMine,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(0.0),
                ),
              ),
            ),
            child: const Icon(Icons.apps_sharp, color: Colors.white),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: onPressedLike,
            style: OutlinedButton.styleFrom(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                // アンダーラインを引く
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(0.0),
                ),
              ),
            ),
            child: const Icon(Icons.favorite_outline),
          ),
        ),
      ],
    );
  }
}
