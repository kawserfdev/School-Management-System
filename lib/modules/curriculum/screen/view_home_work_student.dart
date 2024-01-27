import 'package:aladin/modules/curriculum/screen/view_home_work_student2.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widget/global-appbar2.dart';

// ignore: must_be_immutable
class ViewHomeWorkStudent extends StatelessWidget {
  var Items = [
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
    {"Subject": "Bangla", "Type": "Poem", "Name": "Tamim", "Date": "15.8.2023"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: GlobalAppbar2(
            title: 'View Home Work',
            tap: () {
              Get.back();
            }),
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            top: 20.h,
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: Items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: 15.h),
                          child: Column(
                            children: [
                              Container(
                                // mainAxisAlignment: MainAxisAlignment,
                                height: 130.h,
                                width: 327.w,
                                padding: EdgeInsets.all(10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                        width: 1.w, color: Color(0xffE8E9E2))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          Items[index]['Subject']!,
                                          style: TextStyle(
                                              fontFamily:
                                                  'Arial Rounded MT Bold',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,
                                              color: Color(0xff000000)),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Text(
                                          Items[index]['Type']!,
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 13.sp,
                                              color: Color(0xff000000)),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Text(
                                          Items[index]['Name']!,
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 13.sp,
                                              color: Color(0xff000000)),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Text(
                                          Items[index]['Date']!,
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 13.sp,
                                              color: Color(0xff000000)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                      width: 84.w,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Get.to(ViewHomeWorkStudent2());
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: buttonColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                            //side: BorderSide(color: Colors.blueAccent, width: 1,),
                                          ),
                                          child: Text(
                                            'View',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontFamily:
                                                    'Arial Rounded MT Bold',
                                                color: Colors.white),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
