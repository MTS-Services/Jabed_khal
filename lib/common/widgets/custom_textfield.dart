import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.w,
      height: 50.h,
      child: TextFormField(
        controller: controller,

        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.h),

          suffixIcon: Icon(Icons.search),
          hintText: 'Search',
        ),
      ),
    );
  }
}
