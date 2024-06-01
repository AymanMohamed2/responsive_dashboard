import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_section.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice_section.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        AllExpensesSection(),
        SizedBox(
          height: 20,
        ),
        QuickInvoiceSection(),
      ],
    );
  }
}
