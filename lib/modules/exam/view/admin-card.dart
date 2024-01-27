import 'package:aladin/modules/onbording/view/componant.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
import 'package:aladin/modules/exam/view/view-admit-card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../helper/helper.dart';
import '../../../widget/custom-text.dart';
import '../../../widget/global-appbar.dart';

class AdmitCardPage extends StatelessWidget {
  const AdmitCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Admit Card", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 26.h),
        children: [
          const CustomTextField(
            title: "Student Id",
            hintText: "Enter ID",
          ),
          const CustomTextField(
            title: "Roll Number",
            hintText: "Enter Ro",
          ),
          const CustomTextField(
            title: "Class",
            hintText: "Enter Class",
          ),
          const CustomTextField(
            title: "Section",
            hintText: "Enter Section",
          ),
          addH(50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: CustomButton(
                widget: TextW(
                  title: "Next",
                  color: Colors.white,
                  size: 16.sp,
                ),
                onPressed: () {
                  Get.to(const ViewAdmitCardPage());
                },
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r))),
                    backgroundColor: MaterialStatePropertyAll(buttonColor)),
                width: 158.w,
                height: 48.h),
          )
        ],
      ),
    );
  }
}
