import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_web_app/config/text_style.dart';

class SectionHeaderText extends StatelessWidget {
  const SectionHeaderText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppTextStyle.bold24);
  }
}
