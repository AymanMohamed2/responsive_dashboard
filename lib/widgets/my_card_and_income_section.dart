import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/income_section.dart';
import 'package:responsive_admin_dashboard/widgets/my_card_section.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        MyCardSection(),
        SizedBox(
          height: 20,
        ),
        IncomeSection()
      ],
    );
  }
}
