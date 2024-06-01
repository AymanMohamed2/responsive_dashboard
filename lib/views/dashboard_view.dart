import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_colors.dart';
import 'package:responsive_admin_dashboard/utils/size_config.dart';
import 'package:responsive_admin_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? SizedBox(
              width: MediaQuery.sizeOf(context).width * .7,
              child: const CustomDrawer())
          : null,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? buildAppBar()
          : null,
      backgroundColor: AppColors.greyColor,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(
          Icons.menu,
        ),
      ),
    );
  }
}
