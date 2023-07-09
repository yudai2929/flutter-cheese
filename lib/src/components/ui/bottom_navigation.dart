import 'package:cheese_client/src/constants/route.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final String activeScreen;

  const BottomNavigation({Key? key, required this.activeScreen})
      : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final _screens = [
    ScreenRoutes.home,
    ScreenRoutes.map,
    ScreenRoutes.submit,
    ScreenRoutes.route,
    ScreenRoutes.myPage
  ];

  void _onItemTapped(int index) {
    Navigator.pushNamed(
      context,
      _screens[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _screens.indexOf(widget.activeScreen),
      onTap: _onItemTapped,
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
