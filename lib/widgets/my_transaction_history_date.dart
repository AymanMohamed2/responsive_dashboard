import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class MyTransactionHistoryDate extends StatelessWidget {
  const MyTransactionHistoryDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '13 April 2022',
      style:
          AppStyles.styleMedium16(context).copyWith(color: AppColors.darkGrey),
    );
  }
}
