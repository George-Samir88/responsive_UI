import 'package:flutter/material.dart';
import 'package:responsive_ui/views/adaptive_layout.dart';
import 'package:responsive_ui/views/desktop_layout.dart';
import 'package:responsive_ui/views/mobile_layout.dart';
import 'package:responsive_ui/views/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AdaptiveLayout(
        //this change will provide context if u r using blocProvider
        //also provide creating only the used layout only not creating all layouts
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
