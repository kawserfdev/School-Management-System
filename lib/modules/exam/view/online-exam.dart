import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/fees/widget/help-item.dart';
import 'package:aladin/modules/exam/view/participate.dart';
import 'package:aladin/modules/exam/view/exam-shyllebus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar.dart';

class OnlineExamPage extends StatelessWidget {
  const OnlineExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAppbar(context, "Online Exam", () {
          Get.back();
        }),
        body: ListView(
          padding: EdgeInsets.all(25.h),
          children: [
            addH(20.h),
            Image.asset(
              "assets/image/Online Exam 1.png",
              height: 264.h,
            ),
            addH(50.h),
            Row(
              children: [
                addH(25.h),
                HelpItem(
                    title: "Participate Exam",
                    image: 'assets/icons/Participate Exam.png',
                    tap: () {
                      Get.to(const ParticipatePage());
                    },
                    color: const Color(0xffDFF1FF)),
                addW(14.w),
                HelpItem(
                    title: "View Syllabus",
                    image: 'assets/routine/view-routine.png',
                    tap: () {
                      Get.to(const ExamSyllabusPage());
                    },
                    color: const Color(0xffFFDEE0)),
              ],
            )
          ],
        ));
  }
}
