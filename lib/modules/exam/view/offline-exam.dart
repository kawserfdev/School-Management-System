import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/fees/widget/help-item.dart';
import 'package:aladin/modules/exam/view/admin-card.dart';
import 'package:aladin/modules/exam/view/exam-shyllebus.dart';
import 'package:aladin/modules/exam/view/seat-plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar.dart';

class OfflineExamPage extends StatelessWidget {
  const OfflineExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Offline Exam", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.all(25.h),
        children: [
          addH(20.h),
          Image.asset(
            "assets/image/Offline Exam 1.png",
            height: 264.h,
          ),
          addH(20.h),
          Row(
            children: [
              addH(25.h),
              HelpItem(
                  title: "View Syllabus",
                  image: 'assets/icons/Participate Exam.png',
                  tap: () {
                    Get.to(const ExamSyllabusPage());
                  },
                  color: const Color(0xffFFF0F1)),
              addW(14.w),
              HelpItem(
                  title: "View Seat Plan",
                  image: 'assets/icons/Create Seat Plan.png',
                  tap: () {
                    Get.to(const SeatPlanPage());
                  },
                  color: const Color(0xffFFF7ED))
            ],
          ),
          addH(14.h),
          Center(
            child: HelpItem(
                title: "Download\nAdmit Card",
                image: 'assets/icons/id-card 1.png',
                tap: () {
                  Get.to(const AdmitCardPage());
                },
                color: const Color(0xffF4F9FF)),
          )
        ],
      ),
    );
  }
}
