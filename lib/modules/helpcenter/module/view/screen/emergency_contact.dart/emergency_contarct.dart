import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyContactScreen extends StatelessWidget {
  const EmergencyContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, 'Emergency', () {
        Get.back();
      }),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/helpcenter/EContact1.png',
                height: 273.h,
                width: 288.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: SizedBox(
                height: 240.h,
                width: 324.w,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h, bottom: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Learning Campus',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "Arial Rounded MT Bold"),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset(
                              'assets/helpcenter/phone.png',
                              height: 27.h,
                              width: 27.w,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              '13243456455',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset(
                              'assets/helpcenter/call1.png',
                              height: 27.h,
                              width: 27.w,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              '13243456455',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset(
                              'assets/helpcenter/gmailoutline.png',
                              height: 27.h,
                              width: 27.w,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'yourmail@gmail.com',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset(
                              'assets/helpcenter/location.png',
                              height: 27.h,
                              width: 27.w,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Mirpur, Dhaka',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
