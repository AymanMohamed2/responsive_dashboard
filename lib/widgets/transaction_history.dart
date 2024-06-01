import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/my_transaction_history_date.dart';
import 'package:responsive_admin_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_admin_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 10,
        ),
        MyTransactionHistoryDate(),
        SizedBox(
          height: 10,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
