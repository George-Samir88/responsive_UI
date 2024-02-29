import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_sliver_grid.dart';
import 'package:responsive_ui/views/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          CustomSliverGrid(),
          CustomSliverList()
        ],
      ),
    );
  }
}
