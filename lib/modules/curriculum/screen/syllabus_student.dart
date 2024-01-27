import 'package:aladin/modules/curriculum/screen/term_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widget/global-appbar2.dart';
// import 'curriculum_student.dart';

class SyllabusStudent extends StatefulWidget {
  SyllabusStudent({super.key});
  @override
  State<SyllabusStudent> createState() => _State();
}

class _State extends State<SyllabusStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'My Syllabus',
          tap: () {
            Get.back();
          }),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
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
                        '1st Term',
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
                  Get.to(TermStudent());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
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
                      '2nd Term',
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
                      '3rd Term',
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
      ),
    );
  }
}
