import 'package:flutter/material.dart';

class CustomItem2 extends StatelessWidget {
  const CustomItem2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
