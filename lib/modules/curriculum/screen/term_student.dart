import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/curriculum/screen/bangla_student.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widget/global-appbar2.dart';

class TermStudent extends StatefulWidget {
  TermStudent({super.key});
  @override
  State<TermStudent> createState() => _State();
}

class _State extends State<TermStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: '1st Term',
          tap: () {
            Get.back();
          }),
      body: Padding(
        padding: EdgeInsets.all(0.04.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addH(10.h),
            TextW(
              title: "Subject",
              size: 24.sp,
              textAlign: TextAlign.start,
              fontFamily: "Arial Rounded MT Bold",
            ),
            addH(13.h),
            InkWell(
              child: Container(
                height: 54.h,
                width: 327.w,
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    width: 1,
                    color: Color(0xffE8E9E2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bangla',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff17161B)),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff17161B),
                      size: 30.sp,
                    )
                  ],
                ),
              ),
              onTap: () {
                Get.to(BanglaStudent());
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 54.h,
              width: 327.w,
              padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  width: 1,
                  color: Color(0xffE8E9E2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff17161B)),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xff17161B),
                    size: 30.sp,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 54.h,
              width: 327.w,
              padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  width: 1,
                  color: Color(0xffE8E9E2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Math',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff17161B)),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xff17161B),
                    size: 30.sp,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
