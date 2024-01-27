// ignore: unnecessary_import
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widget/button_widget.dart';
import '../colors_pattern-online.dart';

class ParticipateClassScreen extends StatelessWidget {
  const ParticipateClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: GlobalAppbar2(
              title: 'Participate Class',
              tap: () {
                Get.back();
              }),
          body: Padding(
            padding: EdgeInsets.only(top: 5.h, left: 30.w, right: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset(
                //   'assets/onlineclass/take_class1.png',
                //   height: 210.h,
                //   width: 358.w,
                //   fit: BoxFit.cover,
                // ),
                SizedBox(height: 35.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Container(
                          height: 107.h,
                          width: 327.w,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            elevation: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(right: 20.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.w,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bangla',
                                          style: TextStyle(
                                            fontFamily: 'ARLRDBD',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Text(
                                          'Amjad Hossain',
                                          style: TextStyle(
                                            fontFamily: 'ARLRDBD',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Text(
                                          '10.00 am',
                                          style: TextStyle(
                                            fontFamily: 'ARLRDBD',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  MyButton(
                                    label: 'Join',
                                    fontSize: 14.sp,
                                    onPressed: () {},
                                    backgroundColor: buttonColor,
                                    minimumSize: Size(75.w, 36.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(49.r),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
