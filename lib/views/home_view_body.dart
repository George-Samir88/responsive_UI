import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_sliver_grid.dart';
import 'package:responsive_ui/views/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constrains) {
              if (constrains.maxWidth > 600) {
                return const Text('hallo tablet');
              }
              return const CustomSliverGrid();
            }),
          ),
          const CustomSliverList()
        ],
      ),
    );
  }
}
