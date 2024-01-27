import 'package:aladin/modules/curriculum/screen/home_work_student.dart';
import 'package:aladin/modules/curriculum/screen/syllabus_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar2.dart';
import 'class_work_student.dart';

class CurriculumStudent extends StatefulWidget {
  CurriculumStudent({super.key});
  @override
  State<CurriculumStudent> createState() => _Class_State();
}

class _Class_State extends State<CurriculumStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Curriculum',
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
                        'My Syllabus',
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
                  Get.to(SyllabusStudent());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                child: Container(
                  height: 54.h,
                  width: 327.w,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
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
                        'My Class Work',
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
                  Get.to(() => ClassWorkStudent());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                child: Container(
                  height: 54.h,
                  width: 327.w,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
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
                        'My Home Work',
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
                  Get.to(HomeWorkStudent());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
