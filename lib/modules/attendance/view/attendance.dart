import 'package:aladin/constants/color.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/fees/widget/help-item.dart';
import 'package:aladin/modules/view-attendance/view/view-attendance.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AttendancePage extends StatelessWidget {
  static String attendanceRoute = "/attendance";
  const AttendancePage({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/Attebdance 1.png',
                height: 308.h,
                width: 327.w,
                fit: BoxFit.fill,
              ),
              addH(30.h),
              SizedBox(
                height: 166.h,
                width: 156.w,
                child: HelpItem(
                    title: "View\nAttendance",
                    image: 'assets/icons/View Attendance 1.png',
                    tap: () {
                      Get.toNamed(ViewAttendancePage.viewAttendanceRoute);
                    },
                    color: ConstantColors.red.withOpacity(0.1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
