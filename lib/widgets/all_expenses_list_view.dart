import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/utils/assets.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  static List<AllExpensesItemModel> allExpensesItems = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectNewItem(0);
            },
            child: AllExpensesItem(
                isActive: currentIndex == 0,
                allExpensesItemModel: allExpensesItems[0]),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectNewItem(1);
            },
            child: AllExpensesItem(
                isActive: currentIndex == 1,
                allExpensesItemModel: allExpensesItems[1]),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectNewItem(2);
            },
            child: AllExpensesItem(
                isActive: currentIndex == 2,
                allExpensesItemModel: allExpensesItems[2]),
          ),
        ),
      ],
    );
  }

  void selectNewItem(int index) {
    currentIndex = index;
    setState(() {});
  }
}
