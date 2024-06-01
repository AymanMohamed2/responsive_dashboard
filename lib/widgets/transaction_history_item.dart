import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/transaction_history_model.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
    this.amountColor,
  });
  final TransactionHistoryModel transactionHistoryModel;
  final Color? amountColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: AppColors.darkGrey),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: amountColor ?? AppColors.lightGreen),
        ),
      ),
    );
  }
}
