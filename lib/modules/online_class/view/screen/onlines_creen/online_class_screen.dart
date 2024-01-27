// ignore: file_names
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../model/online_class_model.dart';
import '../colors_pattern-online.dart';

class OnlineClassScreen extends StatelessWidget {
  const OnlineClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
//? Here calls the OnlineClassModel..
    final onlineClass = OnlineClassItem.items();
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: GlobalAppbar2(
              title: 'Online Class',
              tap: () {
                Get.back();
              }),
//! There are Starting to wrok the body sections..
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 7.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Image.asset(
                      'assets/onlineclass/OnlineExam1.png',
                      height: 220.h,
                      width: 327.w,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
//? this widgets split the section..
                  Expanded(
//? Display the items by this Gridview builder..
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: SizedBox(
                        height: 151.h,
                        width: 155.w,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            // childAspectRatio: 1,
                          ),
                          itemCount: onlineClass.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                //? uses for move to another pages.
                                // Navigator.push(
                                //   context,
                                //   CupertinoPageRoute(
                                //     builder: (context) => onlineClass[index].widget,
                                //   ),
                                // );
                                Get.to(onlineClass[index].widget);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  image: DecorationImage(
                                    //? This image is calling from onlineClass model..
                                    image:
                                        AssetImage(onlineClass[index].imgUrl),
                                  ),
                                  color: onlineClass[index].color,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 130.h),
                                  child: Text(
                                    //? This title is calling from onlineClass model..
                                    onlineClass[index].title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Arial Rounded MT Bold",
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
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
