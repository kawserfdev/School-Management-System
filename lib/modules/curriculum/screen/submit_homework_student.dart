// ignore_for_file: unused_local_variable

import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import '../../../widget/global-appbar2.dart';
// import 'classwork_submit_success_student.dart';
// import 'home_work_student.dart';
// import 'homework_submitted_success_student.dart';

class SubmittedHomeWorkStudent extends StatefulWidget {
  @override
  State<SubmittedHomeWorkStudent> createState() => _State();
}

class _State extends State<SubmittedHomeWorkStudent> {
  @override
  Widget build(BuildContext context) {
    String selectedItem = 'Input Title';
    List items = [
      "Input Title",
      "Class 2",
      "Class 3",
      "Class 4",
    ];

    return Container(
      child: Scaffold(
        appBar: GlobalAppbar2(
            title: 'Submit Home Work',
            tap: () {
              Get.back();
            }),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(24.w),
              child: Column(
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
                    height: 10.h,
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
                                width: 1.w, color: Color(0xffE8E9E2))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                width: 1.w, color: Color(0xff000000))),
                      ),
                    ),
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
                        height: 10.h,
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
                                    width: 1.w, color: Color(0xffE8E9E2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    width: 1.w, color: Color(0xff000000))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 300.h,
                    width: 329.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                          'assets/curriculum/images/selected_file_upload_image.png'),
                      fit: BoxFit.fill,
                    )),
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.20.sh),
                      child: SizedBox(
                        height: 41.h,
                        width: 159.w,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                            ),
                            child: Text(
                              'Upload File',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontFamily: 'Arial Rounded MT Bold',
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 41.h,
                        width: 119.w,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(
                              SuccessFull(
                                successFullMessage: 'Successfully Submitted',
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            //side: BorderSide(color: Colors.blueAccent, width: 1,),
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'Arial Rounded MT Bold',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
