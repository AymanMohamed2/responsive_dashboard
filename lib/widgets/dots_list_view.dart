import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_dot_indicator.dart';

class DotsListView extends StatelessWidget {
  const DotsListView({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CustomDotIndicator(
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
