import 'package:aladin/modules/leave/screen/sick-leave.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widget/global-appbar.dart';

class LeaveHistoryScreen extends StatelessWidget {
  const LeaveHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Leave History", () {
        Get.back();
      }),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Row(
              children: [
                TextW(
                  title: 'Date',
                  size: 16.sp,
                ),
                const Spacer(),
                TextW(
                  title: 'Applications',
                  size: 16.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: Container(
                    height: 89.h,
                    width: 334.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xFFE8E9E2),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 13.w),
                          child: Column(
                            children: [
                              TextW(
                                title: 'Sick Leave',
                                size: 16.sp,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                '15/8/2023',
                                style: GoogleFonts.roboto(fontSize: 16.sp),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: InkWell(
                            onTap: () {
                              Get.to(const SickLeaveScreen());
                            },
                            child: Image.asset(
                              'assets/onlineclass/pdf.png',
                              height: 39.h,
                              width: 31.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
