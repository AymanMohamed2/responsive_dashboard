import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_dashboard/widgets/custom_pie_chart.dart';
import 'package:responsive_admin_dashboard/widgets/income_details.dart';
import 'package:responsive_admin_dashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          IncomeHeader(),
          IncomeDetails(),
        ],
      ),
    ));
  }
}

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: IncomeChart()),
        SizedBox(
          width: 10,
        ),
        Expanded(flex: 2, child: IncomeDetailsListView())
      ],
    );
  }
}
