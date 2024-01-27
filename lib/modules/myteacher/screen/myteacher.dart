import 'package:aladin/modules/myteacher/screen/teacher-profile.dart';
import 'package:aladin/modules/online_class/view/widget/button_widget.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../online_class/view/screen/colors_pattern-online.dart';

class MyTeacherScreen extends StatelessWidget {
  const MyTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, 'My Teacher', () {
        Get.back();
      }),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: Container(
              height: 180.h,
              width: 327.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: const Color(0xFFE8E9E2),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 20.h),
                        child: Image.asset(
                          'assets/helpcenter/Rectangle.png',
                          height: 86.h,
                          width: 83.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amdadul Haque',
                              style: TextStyle(
                                fontFamily: 'ARLRDBD',
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Coorditator',
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Bangla Teacher',
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: MyButton(
                          label: 'View',
                          fontSize: 12.sp,
                          onPressed: () {
                            Get.to(const TeacherProfileScreen());
                          },
                          backgroundColor: appBarColor,
                          minimumSize: Size(72.w, 32.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: InkWell(
// For testing pourpuse I just add this page on this image..
                          // onTap: () => Get.to(CountryAPi()),
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: appBarColor,
                              borderRadius: BorderRadius.circular(
                                40.r,
                              ),
                            ),
                            child: Image.asset(
                              'assets/helpcenter/Vector2.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
