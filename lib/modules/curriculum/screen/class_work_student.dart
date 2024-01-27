import 'package:aladin/modules/curriculum/screen/submitted_class_work_student.dart';
import 'package:aladin/modules/curriculum/screen/view_class_work_student.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widget/global-appbar2.dart';
import 'classwork_submitted_history_student.dart';

class ClassWorkStudent extends StatelessWidget {
  const ClassWorkStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
          child: Scaffold(
        appBar: GlobalAppbar2(
          title: 'My Class Work',
          tap: () {
            Get.back();
          },
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 215.h,
                width: 327.w,
                image: AssetImage('assets/curriculum/images/class_work.png'),
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.all(24.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            height: 142.h,
                            width: 156.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffF4F4F4),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    height: 50.h,
                                    width: 50.w,
                                    image: AssetImage(
                                      'assets/curriculum/images/view_attendence.png',
                                    )),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 92.w,
                                  child: Text(
                                    'View Class Work',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: 'Arial Rounded MT Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff17161B)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.to(ViewClassWorkStudent());
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 142.h,
                            width: 156.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffFFF1F2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    height: 50.h,
                                    width: 50.w,
                                    image: AssetImage(
                                      'assets/curriculum/images/submitted_classwork.png',
                                    )),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 97.w,
                                  child: Text(
                                    'Submit Class Work',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: 'Arial Rounded MT Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff17161B)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.to(SubmittedClassWorkStudent());
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 142.h,
                        width: 156.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffF3FFEE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                height: 50.h,
                                width: 50.w,
                                image: AssetImage(
                                  'assets/curriculum/images/submitted_history.png',
                                )),
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 92.w,
                              child: Text(
                                'Submitted History',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Arial Rounded MT Bold',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff17161B)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ClassWorkSubmittedHistoryStudent();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
