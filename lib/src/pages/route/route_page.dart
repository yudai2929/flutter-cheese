import 'package:cheese_client/src/components/ui/aspect_ratio_image.dart';
import 'package:cheese_client/src/components/ui/header.dart';
import 'package:cheese_client/src/components/ui/page_error.dart';
import 'package:cheese_client/src/components/ui/page_loading.dart';
import 'package:cheese_client/src/entities/snap_route/snap_route.dart';
import 'package:cheese_client/src/hooks/domain/snap_route/use_fetch_snap_post.dart';
import 'package:cheese_client/src/router/page_routes.dart';
import 'package:cheese_client/src/styles/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> routes = ['ルート1', 'ルート2', 'ルート3'];

class RoutePage extends HookConsumerWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = useFetchMySnapRoutes(ref);
    final snapRoute = snapshot.data ?? [];

    void onPressedAdd() {
      context.go(PageRoutes.routeSubmit);
    }

    if (snapshot.isLoading) return const PageLoading();

    if (snapshot.hasError) return const PageError();

    return Scaffold(
      backgroundColor: CheeseColor.bgColor,
      appBar: const Header(title: "ルート一覧"),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: _snapRouteCardList(routes: snapRoute),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressedAdd,
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _snapRouteCardList({required List<SnapRoute> routes}) {
    return ListView.builder(
      itemCount: routes.length,
      itemBuilder: (context, index) {
        final topImage =
            routes[index].snapPosts.first.postImages.first.imagePath;
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: _snapRouteCard(
            title: routes[index].title,
            image: topImage,
          ),
        );
      },
    );
  }

  Widget _snapRouteCard({required String title, required String image}) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Row(children: [
        AspectRatioImage(
          image: image,
          size: 120,
        ),
        const SizedBox(width: 16.0),
        // NOTE: タイトルが一行で収まるようにラップしている
        SizedBox(
          width: 172,
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.more_vert,
          ),
          onPressed: () {},
        )
      ]),
    );
  }
}
