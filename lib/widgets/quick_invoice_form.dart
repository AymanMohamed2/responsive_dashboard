import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/widgets/custom_elevated_button.dart';
import 'package:responsive_admin_dashboard/widgets/title_form_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleFormField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TitleFormField(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: TitleFormField(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TitleFormField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: CustomElevatedButton(
              title: 'Add more details',
              backgroundColor: AppColors.whiteColor,
              titleColor: AppColors.primaryColor,
            )),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: CustomElevatedButton(
              title: 'Send Money',
            )),
          ],
        )
      ],
    );
  }
}
