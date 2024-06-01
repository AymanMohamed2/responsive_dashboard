import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const AdminDashboard(),
    ),
  );
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
