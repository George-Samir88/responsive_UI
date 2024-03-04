import 'package:flutter/material.dart';
import 'package:responsive_ui/views/desktop_layout.dart';
import 'package:responsive_ui/views/mobile_layout.dart';
import 'package:responsive_ui/views/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return const MobileLayout();
        } else if (constrains.maxWidth < 900) {
          return const TabletLayout();
        }
        return const DesktopLayout();
      }),
    );
  }
}
