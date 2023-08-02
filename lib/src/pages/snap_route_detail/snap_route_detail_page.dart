import 'package:cheese_client/src/components/ui/page_error.dart';
import 'package:cheese_client/src/components/ui/page_loading.dart';
import 'package:cheese_client/src/hooks/domain/snap_route/use_fetch_snap_post.dart';
import 'package:cheese_client/src/pages/snap_route_detail/map_page.dart';
import 'package:cheese_client/src/pages/snap_route_detail/route_detail.dart';
import 'package:cheese_client/src/pages/snap_route_detail/route_page.dart';
import 'package:cheese_client/src/repositories/snap_route/params/snap_route_params.dart';
import 'package:cheese_client/src/styles/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SnapRouteDetailPage extends HookConsumerWidget {
  final String snapRouteId;
  const SnapRouteDetailPage({Key? key, required this.snapRouteId})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot =
        useFetchSnapRoute(ref, FetchSnapRouteParams(snapRouteId: snapRouteId));
    final snapRoute = snapshot.data;
    Future<void> onBack() async {
      context.pop();
    }

    void onPressedDetail() {}

    if (snapshot.hasError) return const PageError();
    if (snapshot.isLoading || snapRoute == null) return const PageLoading();

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: CheeseColor.bgColor,
          appBar: RouteDetailHeader(
            title: snapRoute.title,
            onPressedAction: onPressedDetail,
            onPressedBack: onBack,
          ),
          body: TabBarView(
            children: [
              const MapPage(),
              RoutePage(
                snapPosts: snapRoute.snapPosts,
              ),
            ],
          ),
        ));
  }
}
