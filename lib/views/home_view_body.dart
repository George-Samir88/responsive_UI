import 'package:flutter/material.dart';
import 'package:responsive_ui/views/adaptive_layout.dart';
import 'package:responsive_ui/views/desktop_layout.dart';
import 'package:responsive_ui/views/mobile_layout.dart';
import 'package:responsive_ui/views/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: AdaptiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
