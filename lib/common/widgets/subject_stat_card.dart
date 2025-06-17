import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ Add this
import 'package:khal971_zidney_course_web_app/config/text_style.dart';

import '../../config/color.dart';
import '../../config/image.dart';
import 'stat_row.dart';

class SubjectStatsCard extends StatelessWidget {
  const SubjectStatsCard({
    super.key,
    required this.subject,
    required this.numOflabel,
    this.label1 = '',
    this.value1 = '',
    this.label2 = '',
    this.label3 = '',
    this.label4 = '',
    this.value4 = '',
    this.value2 = '',
    this.value3 = '',
    this.onTap,
  });
  final String subject;
  final int numOflabel;
  final String label1;
  final String label4;
  final String label2;
  final String label3;
  final String value4;
  final String value1;
  final String value2;
  final String value3;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.containerBorderColor, width: 1.w),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: AppColor.subjectColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(AppImage.subIcon1, width: 32.w, height: 32.h),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Text(
                      subject,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.bold16,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColor.containerBorderColor,
              thickness: 1.h,
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.all(16.r), // responsive padding
              child: Column(
                children: [
                  if (numOflabel >= 1) StatRow(label: label1, value: value1),
                  SizedBox(height: 15.h),
                  if (numOflabel >= 2) StatRow(label: label2, value: value2),
                  SizedBox(height: 15.h),
                  if (numOflabel >= 3) StatRow(label: label3, value: value3),
                  SizedBox(height: 15.h),
                  if (numOflabel >= 4) StatRow(label: label4, value: value4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
