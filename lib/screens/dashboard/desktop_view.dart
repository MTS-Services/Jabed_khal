import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ Add this import
import 'package:get/get.dart';
import 'package:khal971_zidney_course_web_app/common/widgets/sub_container.dart';
import 'package:khal971_zidney_course_web_app/screens/all_course/all_course_screen.dart';
import '../../common/widgets/custom_appbar.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/section_header_text.dart';
import '../../common/widgets/subject_stat_card.dart';
import '../../config/color.dart';
import '../../config/image.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  final TextEditingController controller = TextEditingController();

  final List<String> subjects = [
    'Math',
    'Physics',
    'Chemistry',
    'Biology',
    'English',
    'History',
    'Economics',
    'ICT',
    'Geography',
    'Biology',
    'English',
    'History',
    'Economics',
    'ICT',
    'Geography',
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
              CustomAppBar(title: 'Admin Panel'),
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
                  const SectionHeaderText(text: 'All Subjects'),
                  Row(
                    children: [
                      CustomTextField(controller: controller),
                      SizedBox(width: 20.w),
                      CustomButton(onPressed: () {}, text: 'Add Subject'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.h),

              // Scrollable section for the subjects and other widgets
              Scrollbar(
                // Add Scrollbar
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 20.w,
                    runSpacing: 20.h,
                    children:
                        subjects.map((subject) {
                          return SizedBox(
                            width: 295.w,
                            child: SubjectStatsCard(
                              numOflabel: 4,
                              subject: subject,
                              label1: 'Total Course',
                              value1: '20',
                              label2: 'Total Questions',
                              value2: '150',
                              label3: 'Total Topics',
                              value3: '500',
                              label4: 'Total Quizzes',
                              value4: '600',
                              onTap: () {
                                Get.to(() => AllCourseScreen(title: subject));
                              },
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),

              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
