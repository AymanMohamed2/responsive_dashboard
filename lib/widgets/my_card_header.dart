import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class MyCardHeader extends StatelessWidget {
  const MyCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My card',
      style: AppStyles.styleSemiBold20(context),
    );
  }
}
