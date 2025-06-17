import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khal971_zidney_course_web_app/common/widgets/custom_appbar.dart';
import 'package:khal971_zidney_course_web_app/screens/all_topic/all_topic_screen.dart';

import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/section_header_text.dart';
import '../../common/widgets/sub_container.dart';
import '../../common/widgets/subject_stat_card.dart';
import '../../config/color.dart';
import '../../config/image.dart';

class AllCourseMobileView extends StatefulWidget {
  const AllCourseMobileView({super.key, required this.title});
  final String title;

  @override
  State<AllCourseMobileView> createState() => _AllCourseScreenState();
}

class _AllCourseScreenState extends State<AllCourseMobileView> {
  final TextEditingController controller = TextEditingController();
  final List<String> subjects = [
    'Life Science',
    'Physical Science',
    'Characteristic of Life',
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
              SubContainer(
                title: 'Current Free Subscribers',
                count: '1000',
                image: AppImage.freeIcon,
                color: AppColor.freeSubColor,
                shadowColor: AppColor.freeSubShadowColor,
              ),
              SizedBox(height: 25.h),
              SubContainer(
                title: 'Current Pro Subscribers',
                count: '500',
                image: AppImage.premiumIcon,
                color: AppColor.proSubColor,
                shadowColor: AppColor.proSubShadowColor,
              ),
              SizedBox(height: 50.h),
              SectionHeaderText(text: 'All Course of ${widget.title}'),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(child: CustomTextField(controller: controller)),
                ],
              ),
              SizedBox(height: 30.h),
              CustomButton(onPressed: () {}, text: 'Add Course'),
              SizedBox(height: 30.h),

              Column(
                children:
                    subjects.map((subject) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: SubjectStatsCard(
                          numOflabel: 3,
                          subject: subject,
                          label1: 'Total Topic',
                          value1: '20',
                          label2: 'Total Questions',
                          value2: '150',
                          label3: 'Total Quiz',
                          value3: '500',
                          onTap: () {
                            Get.to(() => AllTopicScreen(title: subject));
                          },
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
