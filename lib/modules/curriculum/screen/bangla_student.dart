import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BanglaStudent extends StatefulWidget {
  @override
  State<BanglaStudent> createState() => _State();
}

class _State extends State<BanglaStudent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: GlobalAppbar2(
            title: 'Bangla',
            tap: () {
              Get.back();
            }),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: Colors.grey,
                                      width: 0.5.w,
                                    ),
                                  ),
                                  color: Colors.white,
                                  elevation: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 0.05.sw,
                                            left: 0.05.sw,
                                            right: 0.05.sw,
                                            bottom: 0.01.sh),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in.'
                                          'Elementum aliquam velit natoque pharetra scelerisque. '
                                          'Viverra mattis fermentum leo turpis tellus. Proin malesuada sit tellus enim turpis lorem praesent tincidunt.'
                                          'Aliquet condimentum tempus hac sem. Ipsum congue orci bibendum vulputate.'
                                          'Velit varius arcu tincidunt venenatis quisque. Nam nunc odio ultrices eget quam morbi fermentum.'
                                          'Quis aliquet integer massa est. '
                                          'Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. '
                                          'Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur. '
                                          'Nisl enim nisl enim at vehicula in. Elementum aliquam velit natoque pharetra scelerisque. '
                                          'Viverra mattis fermentum leo turpis tellus. '
                                          'Proin malesuada sit tellus enim turpis lorem praesent tincidunt. '
                                          'Aliquet condimentum tempus hac sem. Ipsum congue orci bibendum vulputate. '
                                          'Velit varius arcu tincidunt venenatis quisque. Nam nunc odio ultrices eget quam morbi fermentum. '
                                          'Quis aliquet integer massa est. Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. '
                                          'Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in.'
                                          'Elementum aliquam velit natoque pharetra scelerisque. Viverra mattis fermentum leo turpis tellus. '
                                          'Proin malesuada sit tellus enim turpis lorem. Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. '
                                          'Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur.'
                                          'Nisl enim nisl enim at vehicula in.',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.roboto(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.w),
                                            child: Image(
                                              height: 31.h,
                                              width: 39.w,
                                              image: AssetImage(
                                                'assets/curriculum/images/pdf_vector2.png',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.w),
                                            child: InkWell(
                                              child: Icon(
                                                Icons.save_alt,
                                                size: 35.sp,
                                                color: buttonColor,
                                              ),
                                              onTap: () {
                                                Get.to(
                                                  SuccessFull(
                                                      successFullMessage:
                                                          'Successfully Downloaded'),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}
