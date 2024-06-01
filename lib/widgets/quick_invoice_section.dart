import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

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
            QuickInvoiceHeader(),
            SizedBox(
              height: 15,
            ),
            LatestTransaction(),
            QuickInvoiceForm(),
          ],
        ),
      ),
    );
  }
}
