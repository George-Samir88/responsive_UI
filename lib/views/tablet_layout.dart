import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_list_tablet_mode.dart';

import 'custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(child: CustomListInTabletMode()),
        CustomSliverList(),
      ],
    );
  }
}
