import 'package:cheese_client/src/components/ui/common/bottom_navigation.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  final Widget body;

  const ScaffoldWithNavigationBar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
