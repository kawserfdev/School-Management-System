import 'package:aladin/constants/color.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/fees/widget/help-item.dart';
import 'package:aladin/modules/teacher-modules/menual-attendance/view/menual-attendance.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AttendanceTacherPage extends StatelessWidget {
  static String attendanceRoute = "/attendance-techer";
  const AttendanceTacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Attendance", () {
        Get.back();
      }),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/Attebdance 1.png',
                height: 380.h,
                width: 340.w,
                fit: BoxFit.fill,
              ),
              addH(30.h),
              SizedBox(
                height: 210.h,
                width: 180.w,
                child: HelpItem(
                    title: "Manual\nAttendance",
                    image: 'assets/icons/Manual Attendance 1.png',
                    tap: () {
                      Get.toNamed(MenualAttendacePage.attendanceRoute);
                    },
                    color: const Color(0xffF4FFC9)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
