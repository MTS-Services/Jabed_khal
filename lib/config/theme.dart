import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ Required for .r and .w

import 'color.dart';
import 'text_style.dart';

class AppTheme {
  AppTheme._();

  static final appTheme = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), // ✅ responsive radius
        borderSide: BorderSide(
          color: AppColor.buttonShadowColor,
          width: 1.w, // ✅ responsive border width
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.buttonShadowColor, width: 1.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.buttonShadowColor, width: 1.w),
      ),
      hintStyle:
          AppTextStyle
              .regular16, // If font size is hardcoded inside, make it `.sp`
    ),
  );
}
