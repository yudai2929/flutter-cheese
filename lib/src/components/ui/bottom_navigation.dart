import 'package:cheese_client/src/router/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  final _pages = [
    PageRoutes.home,
    PageRoutes.map,
    PageRoutes.submit,
    PageRoutes.route,
    PageRoutes.myPage
  ];

  BottomNavigation({super.key});

  void _onItemTapped(BuildContext context, int index) {
    context.go(_pages[index]);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      onTap: (index) => _onItemTapped(context, index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.collections_outlined), label: 'ホーム'),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined), label: 'マップ'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined), label: '投稿'),
        BottomNavigationBarItem(icon: Icon(Icons.density_medium), label: 'ルート'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), label: 'マイページ'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
