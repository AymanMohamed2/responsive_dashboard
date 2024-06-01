import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/my_card_and_income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AllExpensesAndQuickInvoiceSection(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: MyCardAndIncomeSection(),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
