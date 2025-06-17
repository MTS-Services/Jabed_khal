import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/color.dart';
import '../../config/image.dart';
import '../../config/text_style.dart';

class SubContainer extends StatelessWidget {
  const SubContainer({
    super.key,
    this.title = 'Current Free Subscribers',
    this.count = '2000',
    this.image = AppImage.freeIcon,
    this.color = AppColor.freeSubColor,
    this.shadowColor = AppColor.freeSubShadowColor,
  });

  final String title;
  final String count;
  final String image;
  final Color color;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final isDesktop = constraints.maxWidth >= 1200;

        if (isDesktop) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(color: shadowColor, offset: Offset(0, 10.h)),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(image, height: 80.h, width: 80.w),
                SizedBox(width: 25.w),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTextStyle.regular20),
                      Text(count, style: AppTextStyle.bold40),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (isMobile) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(color: shadowColor, offset: Offset(0, 10.h)),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(image, height: 80.h, width: 80.w),
                SizedBox(width: 25.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTextStyle.regular16),
                      Text(count, style: AppTextStyle.bold32),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(color: shadowColor, offset: Offset(0, 10.h)),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(image, height: 80.h, width: 80.w),
                SizedBox(width: 25.w),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTextStyle.regular20),
                      Text(count, style: AppTextStyle.bold40),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
