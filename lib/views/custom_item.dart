import 'package:flutter/material.dart';

class CustomItem1 extends StatelessWidget {
  const CustomItem1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.35),
      ),
    );
  }
}
