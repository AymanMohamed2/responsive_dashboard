import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    this.backgroundColor,
    required this.child,
    this.width,
    this.height,
  });

  final Color? backgroundColor;

  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          height: height ?? 60,
          width: width ?? 60,
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.lightGrey,
            shape: BoxShape.circle,
          ),
          child: child),
    );
  }
}
