import 'package:aladin/modules/helpcenter/module/view/screen/user_menual/images-view-zoom/step-images.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PdfInstructionScreen extends StatelessWidget {
  const PdfInstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: globalAppbar(context, 'PDF Instruction', () {
            Get.back();
          }),
          body: Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Step 1',
                          style: GoogleFonts.roboto(),
                        ),
                        Text(
                          'Step 2',
                          style: GoogleFonts.roboto(),
                        ),
                        Text(
                          'Step 3',
                          style: GoogleFonts.roboto(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
// First image...
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            StepImages(
                                imageUrl: 'assets/helpcenter/image16.png'),
                          );
                        },
                        child: Image.asset('assets/helpcenter/image16.png'),
                      ),
// Second image..
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            StepImages(
                                imageUrl: 'assets/helpcenter/image17.png'),
                          );
                        },
                        child: Image.asset('assets/helpcenter/image17.png'),
                      ),
// Third image..
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            StepImages(
                                imageUrl: 'assets/helpcenter/image18.png'),
                          );
                        },
                        child: Image.asset('assets/helpcenter/image18.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 35.w, right: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Step 4',
                          style: GoogleFonts.roboto(),
                        ),
                        Text(
                          'Step 5',
                          style: GoogleFonts.roboto(),
                        ),
                        Text(
                          'Step 6',
                          style: GoogleFonts.roboto(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
// Fourth Image..
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            StepImages(
                                imageUrl: 'assets/helpcenter/image19.png'),
                          );
                        },
                        child: Image.asset('assets/helpcenter/image19.png'),
                      ),
// Fifth Image..
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            StepImages(
                                imageUrl: 'assets/helpcenter/image16.png'),
                          );
                        },
                        child: Image.asset('assets/helpcenter/image16.png'),
                      ),
// Sixth Image..
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            StepImages(
                                imageUrl: 'assets/helpcenter/image22.png'),
                          );
                        },
                        child: Image.asset('assets/helpcenter/image22.png'),
                      ),
                    ],
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
