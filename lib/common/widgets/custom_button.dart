import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/color.dart';
import '../../config/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -6.h), // ✅ responsive vertical shift
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 60.w,
            vertical: 8.h,
          ), // ✅ responsive padding
          decoration: BoxDecoration(
            color: AppColor.freeSubShadowColor,
            borderRadius: BorderRadius.circular(
              8.r,
            ), // ✅ responsive border radius
            boxShadow: [
              BoxShadow(
                color: AppColor.buttonShadowColor,
                offset: Offset(0, 10.h), // ✅ responsive shadow offset
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, color: Colors.white), // ✅ still const
              SizedBox(width: 10.w), // ✅ responsive spacing
              Text(text, style: AppTextStyle.bold14.apply(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
