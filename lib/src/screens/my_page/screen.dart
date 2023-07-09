import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/screens/my_page/snap_post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const dummyImg = 'https://picsum.photos/200';
const userName = 'ユーザー名';
const dummyTitle = 'タイトル';
const dummyTag = 'タグ';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Header(title: "マイページ"),
        backgroundColor: Colors.white,
        // NOTE: 画面全体をスクロースするように設定
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 16.0),
            const CircleAvatar(
                radius: 42, backgroundImage: NetworkImage(dummyImg)),
            const SizedBox(height: 16.0),
            const Text(
              userName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
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
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // ボタン1のアクション
                    },
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
                    onPressed: () {
                      // ボタン2のアクション
                    },
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
}
