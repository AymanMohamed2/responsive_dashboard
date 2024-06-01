import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/utils/assets.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryColor,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesCardBackground,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: AppColors.whiteColor),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: const Icon(Icons.image),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    textAlign: TextAlign.end,
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  Text(
                    '12/20-124',
                    textAlign: TextAlign.end,
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: AppColors.whiteColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
