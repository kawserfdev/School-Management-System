import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/global-appbar2.dart';
// import 'classwork_download_success.dart';
// import 'homework_download_success_student.dart';

class ViewHomeWorkStudent2 extends StatefulWidget {
  @override
  State<ViewHomeWorkStudent2> createState() => _State();
}

class _State extends State<ViewHomeWorkStudent2> {
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
                    height: 20.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subject',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Arial Rounded MT Bold',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 48.h,
                        width: 327.w,
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            hintText: 'Bangla',
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 0.5.w, color: Color(0xffE8E9E2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 0.5.w, color: Color(0xff000000))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Arial Rounded MT Bold',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 48.h,
                        width: 327.w,
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            hintText: 'Poem',
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 0.5.w, color: Color(0xffE8E9E2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 0.5.w, color: Color(0xff000000))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Arial Rounded MT Bold',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 91.h,
                        width: 327.w,
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            hintText:
                                'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in. Elementum aliquam velit natoque pharetra scelerisque',
                            contentPadding: EdgeInsets.fromLTRB(15, 20, 10, 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 0.5.w, color: Color(0xffE8E9E2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 0.5.w, color: Color(0xff000000))),
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
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
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bangla',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  'Arial Rounded MT Bold',
                                              color: Color(0xff000000)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'Poem',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                              color: Color(0xff000000)),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
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
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image(
                                              height: 31.h,
                                              width: 39.w,
                                              image: AssetImage(
                                                'assets/curriculum/images/pdf_vector2.png',
                                              ),
                                            ),
                                            InkWell(
                                              child: Icon(
                                                Icons.save_alt,
                                                size: 35.sp,
                                                color: buttonColor,
                                              ),
                                              onTap: () {
                                                Get.to(SuccessFull(
                                                  successFullMessage:
                                                      'Successfully Downloaded',
                                                ));
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
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
