import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/utils/assets.dart';
import 'package:responsive_admin_dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_item.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    title: 'Lekan Okeowo',
                    subtitle: 'demo@gmail.com',
                    image: Assets.imagesAvatar1),
              ),
            ),
          ),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSettings),
                ),
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
