import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_desktop_widget.dart';
import 'package:responsive_ui/views/custom_drawer.dart';
import 'package:responsive_ui/views/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TabletLayout(),
          ),
        ),
        Expanded(flex: 1, child: CustomDesktopWidget()),
      ],
    );
  }
}
