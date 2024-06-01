import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/assets.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            currentindex = index;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: DrawerItem(
              isActive: currentindex == index,
              drawerItemModel: items[index],
            ),
          ),
        );
      },
    );
  }
}
