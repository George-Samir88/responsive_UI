import 'package:flutter/material.dart';
import 'package:responsive_ui/views/custom_item.dart';
import 'package:responsive_ui/views/custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: CustomItem1()),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
