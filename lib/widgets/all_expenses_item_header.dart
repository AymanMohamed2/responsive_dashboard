import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/widgets/custom_circular_container.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.iconColor,
      this.backgroundColor});
  final String image;
  final Color? imageColor;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCircularContainer(
          backgroundColor: backgroundColor ?? AppColors.lightGrey,
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? AppColors.primaryColor, BlendMode.srcIn),
            ),
          ),
        ),
        Transform.rotate(
          angle: 1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: iconColor ?? AppColors.darkBlue,
          ),
        )
      ],
    );
  }
}
