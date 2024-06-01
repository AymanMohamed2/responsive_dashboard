import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/models/income_item_details_model.dart';
import 'package:responsive_admin_dashboard/widgets/item_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  static const items = [
    IncomeItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeItemDetailsModel(
        color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
