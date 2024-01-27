import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar.dart';

class ResultSheetPage extends StatelessWidget {
  const ResultSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Result", () {
        Get.back();
      }),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextW(
                        title: "Class 1",
                        size: 14.sp,
                        fontFamily: ConstantStrings.kAppInterLight,
                        weight: FontWeight.bold,
                      ),
                      addW(6.w),
                      Image.asset(
                          'assets/icons/arrow-small-left (1) 1 (1).png'),
                      addH(6.w),
                      TextW(
                        title: "Section A",
                        size: 14.sp,
                        fontFamily: ConstantStrings.kAppInterLight,
                        weight: FontWeight.bold,
                      ),
                      addW(6.w),
                      Image.asset(
                          'assets/icons/arrow-small-left (1) 1 (1).png'),
                      addH(6.w),
                      TextW(
                        title: "Morning",
                        size: 14.sp,
                        fontFamily: ConstantStrings.kAppInterLight,
                        weight: FontWeight.bold,
                      ),
                      addW(6.w),
                      Image.asset(
                          'assets/icons/arrow-small-left (1) 1 (1).png'),
                      addH(6.w),
                      TextW(
                        title: "Bangla",
                        size: 14.sp,
                        fontFamily: ConstantStrings.kAppInterLight,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                addH(20),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextW(
                        title: "Roll",
                        size: 16.sp,
                      ),
                      TextW(
                        title: "Marks",
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.w, vertical: 5.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextW(
                                    title: "10",
                                    size: 16.sp,
                                    fontFamily: ConstantStrings.kAppInterLight,
                                    weight: FontWeight.bold,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 30.w),
                                    child: TextW(
                                      title: "10",
                                      size: 16.sp,
                                      fontFamily:
                                          ConstantStrings.kAppInterLight,
                                      weight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            addH(15.h),
                            const Divider(
                              color: Colors.grey,
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
