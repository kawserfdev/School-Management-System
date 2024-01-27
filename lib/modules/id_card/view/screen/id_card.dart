import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IdCard extends StatelessWidget {
  static String routeName = "/idCard";
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, 'Id Card', () {
        Get.back();
      }),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: SizedBox(
            height: 550.h,
            width: 350.w,
            child: PageView(
              children: [
                Container(
                  padding: EdgeInsets.all(15.r),
                  height: 550.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 103.h,
                            child: Image.asset(
                              "assets/image/logo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 35.h,
                            width: double.infinity,
                            color: const Color(0xFFFE9900),
                            child: Center(
                                child: Text(
                              "Learning Campus",
                              style: TextStyle(
                                  fontSize: 20.sp, color: Colors.white),
                            )),
                          ),
                          addH(15.h),
                          Text(
                            "Main Brance",
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                          addH(15.h),
                          Container(
                            height: 130.h,
                            width: 125.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            child: Image.asset(
                              "assets/image/logo.png",
                            ),
                          ),
                          addH(15.h),
                          Text(
                            "Md. Kamal Hassain",
                            style: TextStyle(
                                fontSize: 20.sp, color: Color(0xFF040279)),
                          ),
                          addH(5.h),
                          SizedBox(
                            height: 100.h,
                            width: 160.w,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    IdInfo(title: "Class"),
                                    IdInfo(title: "Roll"),
                                    IdInfo(title: "Section"),
                                    IdInfo(title: "Sassion"),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IdInfo(title: ": One"),
                                    IdInfo(title: ": 01"),
                                    IdInfo(title: ": 01"),
                                    IdInfo(title: ": 2022"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          addH(5.h),
                          Container(
                            color: appBarColor,
                            height: 45.h,
                            width: double.infinity,
                            padding: EdgeInsets.only(right: 10.w),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "Principal",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 20.sp,
                                        color: Colors.white),
                                  ),
                                )),
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 55.h),
                          child: Opacity(
                              opacity: 0.1,
                              child: Image.asset(
                                "assets/image/watermark_logo.png",
                                height: 240.h,
                                width: 240.w,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.r),
                  height: 550.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      addH(20.h),
                      Text(
                        "If Found Please Return to :",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Image.asset(
                        "assets/image/logo.png",
                        height: 235.h,
                      ),
                      Text(
                        "Learning Campus",
                        style: TextStyle(fontSize: 30.sp, color: Colors.black),
                      ),
                      Text(
                        "Main Brance",
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      Column(
                        children: [
                          IdInfo(title: "Uttara, Dhaka"),
                          IdInfo(title: "Mobile : 01652654565"),
                          IdInfo(title: "Email: example@gmail.com"),
                          IdInfo(title: "web: learningcampus.com"),
                        ],
                      ),
                      addH(30.h)
                    ],
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

class IdInfo extends StatelessWidget {
  final String title;

  const IdInfo({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.sp,
        fontFamily: "Roboto",
      ),
    );
  }
}
