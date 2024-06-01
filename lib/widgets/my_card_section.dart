import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/widgets/custom_container.dart';
import 'package:responsive_admin_dashboard/widgets/dots_list_view.dart';
import 'package:responsive_admin_dashboard/widgets/my_card_header.dart';
import 'package:responsive_admin_dashboard/widgets/my_card_page_view.dart';
import 'package:responsive_admin_dashboard/widgets/transaction_history.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    updateCardIndex();
    super.initState();
  }

  void updateCardIndex() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          const MyCardHeader(),
          const SizedBox(
            height: 15,
          ),
          MyCardPageView(
            pageController: pageController,
          ),
          const SizedBox(
            height: 15,
          ),
          DotsListView(
            currentIndex: currentIndex,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: AppColors.ultraLightGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          const TransactionHistory(),
        ],
      ),
    ));
  }
}
