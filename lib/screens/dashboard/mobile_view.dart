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

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final TextEditingController controller = TextEditingController();

  final List<String> subjects = [
    'Math',
    'Physics',
    'Chemistry',
    'Biology',
    'English',
    'History',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: 'Admin Panel'),
              SizedBox(height: 40.h),
              const SectionHeaderText(text: 'Your Subscribers'),
              SizedBox(height: 20.h),
              SubContainer(
                title: 'Current Free Subscribers',
                count: '1000',
                image: AppImage.freeIcon,
                color: AppColor.freeSubColor,
                shadowColor: AppColor.freeSubShadowColor,
              ),
              SizedBox(height: 30.h),
              SubContainer(
                title: 'Current Pro Subscribers',
                count: '500',
                image: AppImage.premiumIcon,
                color: AppColor.proSubColor,
                shadowColor: AppColor.proSubShadowColor,
              ),
              SizedBox(height: 30.h),
              const SectionHeaderText(text: 'All Subjects'),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(child: CustomTextField(controller: controller)),
                ],
              ),
              SizedBox(height: 20.h),
              CustomButton(onPressed: () {}, text: 'Add Subject'),
              SizedBox(height: 20.h),

              Column(
                children:
                    subjects.map((subject) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
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
                          onTap: () {},
                        ),
                      );
                    }).toList(),
              ),

              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
