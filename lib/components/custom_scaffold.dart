import 'package:flutter/material.dart';
import 'package:wise_meal/components/app_bar.dart';
import 'package:wise_meal/components/app_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const CustomScaffold({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Large screen: Show AppBar with links
          return Scaffold(
            appBar: CustomAppBar(
              title: title,
              showMenuIcon: false,
            ),
            body: body,
          );
        } else {
          // Small screen: Show AppBar with menu icon and Drawer
          return Scaffold(
            appBar: CustomAppBar(
              title: title,
              showMenuIcon: true,
            ),
            drawer: const AppDrawer(),
            body: body,
          );
        }
      },
    );
  }
}
