import 'package:flutter/material.dart';

import 'custom_item_2.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    //sliverList.builder is used with custom scroll view when you have more than one scrollable item in custom scroll view
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const CustomItem2(),
    );
  }
}
