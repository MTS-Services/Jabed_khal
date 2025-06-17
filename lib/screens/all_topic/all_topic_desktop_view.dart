import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/widgets/custom_appbar.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/section_header_text.dart';
import '../../common/widgets/sub_container.dart';
import '../../common/widgets/subject_stat_card.dart';
import '../../config/color.dart';
import '../../config/image.dart';

class AllTopicDesktopView extends StatefulWidget {
  const AllTopicDesktopView({super.key, required this.title});

  final String title;

  @override
  State<AllTopicDesktopView> createState() => _AllTopicDesktopViewState();
}

class _AllTopicDesktopViewState extends State<AllTopicDesktopView> {
  final TextEditingController controller = TextEditingController();

  final List<String> subjects = [
    'Biological Exploration',
    'Understanding the Universe',
    'Journey through the stars',
    'The world of molecules',
    'The human body',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 100.w, right: 100.w, top: 35.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: widget.title),
              SizedBox(height: 55.h),
              const SectionHeaderText(text: 'Your Subscribers'),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: SubContainer(
                      title: 'Current Free Subscribers',
                      count: '1000',
                      image: AppImage.freeIcon,
                      color: AppColor.freeSubColor,
                      shadowColor: AppColor.freeSubShadowColor,
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Expanded(
                    child: SubContainer(
                      title: 'Current Pro Subscribers',
                      count: '500',
                      image: AppImage.premiumIcon,
                      color: AppColor.proSubColor,
                      shadowColor: AppColor.proSubShadowColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionHeaderText(text: 'All Course of ${widget.title}'),
                  Row(
                    children: [
                      CustomTextField(controller: controller),
                      SizedBox(width: 20.w),
                      CustomButton(onPressed: () {}, text: 'Add Topic'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Wrap(
                spacing: 20.w,
                runSpacing: 20.h,
                children:
                    subjects.map((subject) {
                      return SizedBox(
                        width: 295.w,
                        child: SubjectStatsCard(
                          numOflabel: 2,
                          subject: subject,
                          label1: 'Total Questions',
                          value1: '150',
                          label2: 'Total Quizzes',
                          value2: '600',
                          onTap: () {},
                        ),
                      );
                    }).toList(),
              ),

              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
