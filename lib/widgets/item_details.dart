import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/income_item_details_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final IncomeItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemDetailsModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
