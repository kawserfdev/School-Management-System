import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/fees/widget/help-item.dart';
import 'package:aladin/modules/exam/view/offline-exam.dart';
import 'package:aladin/modules/exam/view/online-exam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Exam", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.all(25.h),
        children: [
          addH(20.h),
          Image.asset(
            "assets/image/Exam 1.png",
            height: 264.h,
          ),
          addH(50.h),
          Row(
            children: [
              addH(25.h),
              HelpItem(
                  title: "Online Exam",
                  image: 'assets/icons/Online Exam.png',
                  tap: () {
                    Get.to(const OnlineExamPage());
                  },
                  color: const Color(0xffFFF9E9)),
              addW(14.w),
              HelpItem(
                  title: "Offline Exam",
                  image: 'assets/icons/Offline Exam.png',
                  tap: () {
                    // ignore: prefer_const_constructors
                    Get.to(OfflineExamPage());
                  },
                  color: const Color(0xffDFF1FF))
            ],
          )
        ],
      ),
    );
  }
}
