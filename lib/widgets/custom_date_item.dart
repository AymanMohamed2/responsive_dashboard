import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class CustomDateItem extends StatelessWidget {
  const CustomDateItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.ultraLightGrey)),
      child: Row(
        children: [
          Text(
            text,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 12,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
