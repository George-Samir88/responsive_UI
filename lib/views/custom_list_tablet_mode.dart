import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_item.dart';

class CustomHorizontalListInTabletMode extends StatelessWidget {
  const CustomHorizontalListInTabletMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: AspectRatio(aspectRatio: 1, child: CustomItem1()),
          );
        },
        itemCount: 15,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
