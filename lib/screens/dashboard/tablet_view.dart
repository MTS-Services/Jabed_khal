import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khal971_zidney_course_web_app/common/widgets/sub_container.dart';
import '../../common/widgets/custom_appbar.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/section_header_text.dart';
import '../../common/widgets/subject_stat_card.dart';
import '../../config/color.dart';
import '../../config/image.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
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
          padding: EdgeInsets.only(left: 50.w, right: 50.w, top: 35.h),
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
              const SectionHeaderText(text: 'All Subjects'),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(child: CustomTextField(controller: controller)),
                  SizedBox(width: 20.w),
                  CustomButton(onPressed: () {}, text: 'Add Subject'),
                ],
              ),
              SizedBox(height: 30.h),
              Column(
                children: List.generate((subjects.length / 2).ceil(), (index) {
                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
                          child: SubjectStatsCard(
                            numOflabel: 4,
                            subject: subjects[firstIndex],
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
                        ),
                      ),
                      if (secondIndex < subjects.length)
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
                            child: SubjectStatsCard(
                              numOflabel: 4,
                              subject: subjects[secondIndex],
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
                          ),
                        ),
                    ],
                  );
                }),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
