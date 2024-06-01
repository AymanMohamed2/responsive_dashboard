import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/custom_circular_container.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const CustomCircularContainer(
          width: 48,
          height: 48,
          child: Icon(
            Icons.add,
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}
