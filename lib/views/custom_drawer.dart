import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  final List<DrawerItemModel> drawerItemModel = const [
    DrawerItemModel(text: 'DASHBOARD', iconData: Icons.home),
    DrawerItemModel(text: 'SETTINGS', iconData: Icons.settings),
    DrawerItemModel(text: 'ABOUT', iconData: Icons.info),
    DrawerItemModel(text: 'LOGOUT', iconData: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.favorite_outlined,
              size: 56,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomDrawerItemsListView(drawerItemModel: drawerItemModel),
        ],
      ),
    );
  }
}
