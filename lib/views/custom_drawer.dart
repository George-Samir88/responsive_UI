import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: const Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite_outlined,
              size: 42,
            ),
          ),
        ],
      ),
    );
  }
}
