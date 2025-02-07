import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/active_and_in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    this.isActive = false,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
