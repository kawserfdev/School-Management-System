import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../widget/global-appbar2.dart';
// import 'class_work_student.dart';
import 'home_work_student.dart';
// import 'homework_submitted_history_student.dart';

class HomeWorkSubmittedViewStudent extends StatefulWidget {
  @override
  State<HomeWorkSubmittedViewStudent> createState() => _State();
}

class _State extends State<HomeWorkSubmittedViewStudent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: GlobalAppbar2(
            title: 'View',
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
                                            top: 10.w,
                                            left: 10.w,
                                            right: 10.w,
                                            bottom: 5.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bangla',
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  fontFamily:
                                                      'Arial Rounded MT Bold',
                                                  color: Color(0xff000000)),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text(
                                              'Poem',
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xff000000)),
                                            ),
                                            SizedBox(
                                              height: 3.h,
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
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.w),
                                            child: Image(
                                              height: 31.h,
                                              width: 39.w,
                                              image: AssetImage(
                                                  'assets/curriculum/images/pdf_vector2.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 100.h),
                                  child: SizedBox(
                                    height: 40.h,
                                    width: 168.w,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Get.to(HomeWorkStudent());
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: buttonColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          //side: BorderSide(color: Colors.blueAccent, width: 1,),
                                        ),
                                        child: Text(
                                          'Back To My Home Work',
                                          style: TextStyle(
                                              fontFamily:
                                                  'Arial Rounded MT Bold',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
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
