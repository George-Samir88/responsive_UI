import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.drawerItemModel,
  });

  final List<DrawerItemModel> drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItemModel: drawerItemModel[index]);
      },
      itemCount: drawerItemModel.length,
    );
  }
}
