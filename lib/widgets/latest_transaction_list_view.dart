import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/utils/assets.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_header.dart';

class LatestTransacionListView extends StatelessWidget {
  const LatestTransacionListView({super.key});
  static List<UserInfoModel> items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar3),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar4),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          items.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: items[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
