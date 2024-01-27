import 'package:aladin/modules/curriculum/screen/submit_homework_student.dart';
import 'package:aladin/modules/curriculum/screen/view_home_work_student.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar2.dart';
import 'homework_submitted_history_student.dart';

class HomeWorkStudent extends StatelessWidget {
  const HomeWorkStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
          child: Scaffold(
        appBar: GlobalAppbar2(
            title: 'My Home Work',
            tap: () {
              Get.back();
            }),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(24.w),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: 278.h,
                  width: 318.w,
                  image: AssetImage('assets/curriculum/images/home_work.png'),
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  // padding: EdgeInsets.all(24.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              height: 156.h,
                              width: 155.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffE7F1FF),
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
                                      'View Home Work',
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
                              Get.to(ViewHomeWorkStudent());
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: 156.h,
                              width: 155.w,
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
                                        'assets/curriculum/images/submit_home_student.png',
                                      )),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  SizedBox(
                                    width: 97.w,
                                    child: Text(
                                      'Submit Home Work',
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
                              Get.to(SubmittedHomeWorkStudent());
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        child: Container(
                          height: 156.h,
                          width: 155.w,
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
                                    'assets/curriculum/images/homework_submission_history.png',
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
                                      color: Color(0xff17161B)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(HomeWorkSubmittedHistoryStudent());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
