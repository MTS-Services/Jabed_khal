import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_web_app/screens/dashboard/desktop_view.dart';
import 'package:khal971_zidney_course_web_app/screens/dashboard/mobile_view.dart';
import 'package:khal971_zidney_course_web_app/screens/dashboard/tablet_view.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            return const DesktopView();
          } else if (constraints.maxWidth >= 768) {
            return const TabletView();
          } else {
            return const MobileView();
          }
        },
      ),
    );
  }
}
