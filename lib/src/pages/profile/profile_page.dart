import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/entities/snap_post/snap_post.dart';
import 'package:cheese_client/src/entities/snap_post/tag_options.dart';
import 'package:cheese_client/src/hooks/domain/auth/use_sign_out.dart';
import 'package:cheese_client/src/hooks/domain/user/use_update_user.dart';
import 'package:cheese_client/src/hooks/helper/use_mutation.dart';
import 'package:cheese_client/src/hooks/io/use_upload_file.dart';
import 'package:cheese_client/src/pages/profile/profile_setting_modal.dart';
import 'package:cheese_client/src/pages/profile/snap_post_card.dart';
import 'package:cheese_client/src/pages/profile/use_fetch_profile.dart';
import 'package:cheese_client/src/providers/profile_provider.dart';
import 'package:cheese_client/src/repositories/user/params/user_params.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = useFetchProfile(ref);
    final updateMutation = useUpdateUser(ref);
    final signOutMutation = useSignOut(ref);
    final fileMutation = useUploadFile(ref);
    final user = snapshot.user;
    final mySnapPosts = snapshot.mySnapPosts;

    Future<void> onSubmitProfile(
        {required String name,
        required String imageUrl,
        required double searchedRadiusInM}) async {
      final params = UpdateUserParams(
        name: name,
        iconPath: imageUrl,
        searchedRadiusInM: searchedRadiusInM,
      );
      await updateMutation.mutate(
          params: params,
          option: MutationOption(
            onSuccess: (res) async {
              snapshot.refetch();
              if (context.mounted) context.pop();
            },
            onError: (e) async {
              print(e);
            },
          ));
    }

    Future<void> onPressedSignOut() async {
      print("call");
      await signOutMutation.mutate();
      if (context.mounted) context.go(PageRoutes.singIn);
    }

    Future<void> onPressedEditProfile(
        {required String name,
        required String imageUrl,
        required double searchedRadiusInM}) async {
      await showModalBottomSheet(
          context: context,
          // NOTE: trueにしないと、Containerのheightが反映されない
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
          builder: (context) {
            return ProfileSettingModal(
                onPressedClose: () => context.pop(),
                onPressedSignOut: onPressedSignOut,
                onSubmit: onSubmitProfile,
                imageUrl: imageUrl,
                userName: name,
                searchedRadiusInM: searchedRadiusInM.toInt());
          });
    }

    if (snapshot.isLoading || user == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
        appBar: const Header(title: "マイページ"),
        backgroundColor: Colors.white,
        // NOTE: 画面全体をスクロースするように設定
        body: SingleChildScrollView(
          child: Column(children: [
            _profile(userName: user.name, imageUrl: user.iconPath),
            const SizedBox(height: 8.0),
            _editButton(
                onPressed: () => onPressedEditProfile(
                      name: user.name,
                      imageUrl: user.iconPath,
                      searchedRadiusInM: user.searchedRadiusInM.toDouble(),
                    )),
            const SizedBox(height: 16.0),
            _tabButtons(
              onPressedMine: () {},
              onPressedLike: () {},
            ),
            _snapPostCardList(snapPosts: mySnapPosts),
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

  Widget _editButton({required VoidCallback onPressed}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        child: const Text(
          "プロフィール編集・設定",
        ));
  }

  Widget _tabButtons(
      {required VoidCallback onPressedMine,
      required VoidCallback onPressedLike}) {
    const BorderRadius borderRadius = BorderRadius.only(
      topRight: Radius.circular(4.0),
      bottomRight: Radius.circular(0.0),
      topLeft: Radius.circular(4.0),
      bottomLeft: Radius.circular(0.0),
    );
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressedMine,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: borderRadius,
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
                borderRadius: borderRadius,
              ),
            ),
            child: const Icon(Icons.favorite_outline),
          ),
        ),
      ],
    );
  }

  Widget _snapPostCardList({required List<SnapPost> snapPosts}) {
    return GridView.count(
      // NOTE: GridViewの中でのアイテムのサイズを指定
      childAspectRatio: 0.7,
      // NOTE: GridViewの中でのアイテムの数を指定
      crossAxisCount: 2,
      shrinkWrap: true,

      // NOTE: GridViewのスクロールを無効化
      physics: const NeverScrollableScrollPhysics(),
      children: snapPosts
          .map((post) => SnapPostCard(
                title: post.title,
                tags: post.tags.map((e) => tagOptions.valueToLabel(e)).toList(),
                imageUrl: post.postImages.first.imagePath,
              ))
          .toList(),
    );
  }
}
