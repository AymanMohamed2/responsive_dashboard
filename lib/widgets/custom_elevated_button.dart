import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, this.backgroundColor, required this.title, this.titleColor});
  final Color? backgroundColor;
  final Color? titleColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: titleColor),
          ),
        ),
      ),
    );
  }
}
