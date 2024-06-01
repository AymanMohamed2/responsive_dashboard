import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

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
          flex: 2,
          child: DashboardMobileLayout(),
        ),
      ],
    );
  }
}
