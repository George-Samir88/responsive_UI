import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.iconData),
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          drawerItemModel.text,
          style: const TextStyle(letterSpacing: 3),
        ),
      ),
    );
  }
}
