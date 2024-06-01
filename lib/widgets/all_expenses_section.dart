import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_list_view.dart';
import 'package:responsive_admin_dashboard/widgets/all_exspenses_header.dart';
import 'package:responsive_admin_dashboard/widgets/custom_container.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 20,
            ),
            AllExpensesListView()
          ],
        ),
      ),
    );
  }
}
