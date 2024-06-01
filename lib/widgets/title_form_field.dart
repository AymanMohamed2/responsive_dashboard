import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/utils/custom_text_from_field.dart';

class TitleFormField extends StatelessWidget {
  const TitleFormField(
      {super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
