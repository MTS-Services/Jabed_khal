import 'package:flutter/material.dart';

import '../../config/color.dart';
import '../../config/text_style.dart';

class StatRow extends StatelessWidget {
  final String label;
  final String value;

  const StatRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyle.regular16.apply(color: AppColor.textColor),
        ),
        Text(
          value,
          style: AppTextStyle.regular16.apply(color: AppColor.textColor),
        ),
      ],
    );
  }
}
