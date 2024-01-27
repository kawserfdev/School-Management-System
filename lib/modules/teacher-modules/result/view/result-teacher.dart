import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/teacher-modules/view-result/view/view-result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/color.dart';
import '../../../../widget/custom-text.dart';
import '../../../../widget/global-appbar.dart';
import '../../../onbording/view/componant.dart';

class ResultTeacherPage extends StatelessWidget {
  static String resultRoute = "/result-techer";
  const ResultTeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Result", () {
        Get.back();
      }),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/Result 1.png",
              height: 248.h,
              width: 145.w,
            ),
            addH(50.h),
            CustomButton(
                widget: TextW(
                  title: "View Result",
                  color: Colors.white,
                  size: 16.sp,
                ),
                onPressed: () {
                  Get.to(const ViewResultPage());
                },
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r))),
                    backgroundColor:
                        MaterialStatePropertyAll(ConstantColors.indigo)),
                width: double.infinity,
                height: 48.h)
          ],
        ),
      ),
    );
  }
}
