import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/exam/view/participate-exam.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// import '../../../constants/color.dart';
import '../../../widget/custom-text.dart';
import '../../../widget/global-appbar.dart';
import '../../onbording/view/componant.dart';

class ParticipatePage extends StatelessWidget {
  const ParticipatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Participate Exam", () {
        Get.back();
      }),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          itemBuilder: (context, index) {
            return JoinItem(
              tap: () {
                Get.to(const ParticipateExamPage());
              },
            );
          }),
    );
  }
}

class JoinItem extends StatelessWidget {
  const JoinItem({
    super.key,
    required this.tap,
  });
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
            border: Border.all(width: 0.4, color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextW(
                  title: "Bangla",
                  size: 14.sp,
                  fontFamily: ConstantStrings.kAppInterBold,
                  weight: FontWeight.bold,
                ),
                addH(10.h),
                TextW(
                  title: "1st Term",
                  size: 13.sp,
                  fontFamily: ConstantStrings.kAppInterLight,
                ),
                addH(5.h),
                TextW(
                  title: "John Smith",
                  size: 13.sp,
                  fontFamily: ConstantStrings.kAppInterLight,
                ),
                addH(5.h),
                TextW(
                  title: "10.00 PM",
                  size: 12.sp,
                  fontFamily: ConstantStrings.kAppInterLight,
                ),
              ],
            ),
            CustomButton(
                widget: TextW(
                  title: "Join",
                  color: Colors.white,
                  size: 17.sp,
                ),
                onPressed: tap,
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r))),
                    backgroundColor: MaterialStatePropertyAll(buttonColor)),
                width: 75.w,
                height: 36.h)
          ],
        ),
      ),
    );
  }
}
