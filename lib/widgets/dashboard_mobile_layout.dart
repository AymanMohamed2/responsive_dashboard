import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_admin_dashboard/widgets/my_card_and_income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 20,
          ),
          MyCardAndIncomeSection(),
        ],
      ),
    );
  }
}
