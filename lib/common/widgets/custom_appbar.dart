import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khal971_zidney_course_web_app/config/image.dart';
import 'package:khal971_zidney_course_web_app/config/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(AppImage.logo, height: 80.h, width: 80.w),
      title: Text(title, style: AppTextStyle.regular24),
      centerTitle: true,
      actions: [
        CircleAvatar(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
