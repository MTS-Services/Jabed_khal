import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_web_app/screens/all_topic/all_topic_desktop_view.dart';
import 'package:khal971_zidney_course_web_app/screens/all_topic/all_topic_mobile_view.dart';
import 'package:khal971_zidney_course_web_app/screens/all_topic/all_topic_tablet_view.dart';

class AllTopicScreen extends StatelessWidget {
  const AllTopicScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            return  AllTopicDesktopView(title: title,);
          } else if (constraints.maxWidth >= 768) {
            return  AllTopicTabletView(title: title,);
          } else {
            return  AllTopicMobileView(title: title,);
          }
        },
      ),
    
    );
  }
}