import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_web_app/screens/all_course/all_course_desktop_view.dart';

import 'all_course_mobile_view.dart';
import 'all_course_tablet_view.dart';

class AllCourseScreen extends StatelessWidget {
  const AllCourseScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            return AllCourseDesktopView(title: title);
          } else if (constraints.maxWidth >= 768) {
            return AllCourseTabletView(title: title);
          } else {
            return AllCourseMobileView(title: title);
          }
        },
      ),
    );
  }
}
