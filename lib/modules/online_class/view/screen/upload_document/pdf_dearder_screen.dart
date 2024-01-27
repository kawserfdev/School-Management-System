import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors_pattern-online.dart';

class PdfReaderVieew extends StatelessWidget {
  const PdfReaderVieew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            centerTitle: true,
            title: Text(
              'Bangla 1st Paper ',
              style: TextStyle(
                fontFamily: 'ARLRDBD',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 7.h),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/onlineclass/circale.svg',
                    ),
                    Positioned(
                      top: 7.h,
                      left: 7.w,
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Topic: Poem',
                    style: GoogleFonts.roboto(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 745.h,
                        width: 327.w,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            side: BorderSide(
                              color: Colors.grey,
                              width: 0.2.w,
                            ),
                          ),
                          color: whiteColor,
                          elevation: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20.h, left: 20.w, right: 20.w),
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
                                  style: GoogleFonts.roboto(fontSize: 12.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 25.h, left: 20.w, right: 20.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/onlineclass/pdf.png',
                                      height: 39.h,
                                      width: 32.w,
                                    ),
                                    Image.asset(
                                      'assets/onlineclass/download.png',
                                      height: 33.h,
                                      width: 33.w,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
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
