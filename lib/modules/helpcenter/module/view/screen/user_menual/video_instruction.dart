import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoInstructionScreen extends StatelessWidget {
  const VideoInstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: globalAppbar(context, 'Video Instruction', () {
            Get.back();
          }),
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 15.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 327.w,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Image.asset('assets/helpcenter/Group.png'),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'User Menual',
                                      style: GoogleFonts.roboto(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      'Date: 12/08/2023',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/helpcenter/download.png',
                                  color: buttonColor,
                                  height: 33.h,
                                  width: 33.w,
                                ),
                              ],
                            ),
                            addH(14.h)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
