import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.ultraLightGrey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(image: allExpensesItemModel.image),
            const SizedBox(
              height: 30,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.ultraLightGrey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              backgroundColor:
                  AppColors.whiteColor.withOpacity(0.10000000149011612),
              image: allExpensesItemModel.image,
              imageColor: AppColors.whiteColor,
              iconColor: AppColors.whiteColor,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: AppColors.whiteColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: AppColors.whiteColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: AppColors.whiteColor),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
