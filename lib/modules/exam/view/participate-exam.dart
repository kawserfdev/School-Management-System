import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/notice-board/model/notice-board-item.dart';
import 'package:aladin/modules/notice-board/widget/notice-board-list-item.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/online_class/view/screen/onlines_creen/online_class_screen.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import '../../../constants/color.dart';
import '../../../constants/string.dart';
import '../../../widget/custom-text.dart';
import '../../../widget/global-appbar.dart';
import '../../onbording/view/componant.dart';

class ParticipateExamPage extends StatelessWidget {
  const ParticipateExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Participate Exam", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        children: [
          const CustomTextField(
            title: "Class",
            hintText: "Enter Class",
          ),
          const CustomTextField(
            title: "Shift",
            hintText: "Enter Shift",
          ),
          const CustomTextField(
            title: "Subject",
            hintText: "Enter Subject",
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: TextW(
                title: 'Question',
                size: 16.sp,
              )),
          addH(20.h),
          SizedBox(
            height: 700.h,
            child: NoticeBoardItem(
                isTitleHide: true,
                item: NoticeBoardItemModel(
                    title: "Title",
                    details: ConstantStrings.loremText,
                    downloadUrl: "downloadUrl")),
          ),
          addH(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w),
            child: CustomButton(
                widget: TextW(
                  title: "Participate Exam",
                  color: Colors.white,
                  size: 12.sp,
                ),
                onPressed: () {
                  Get.to(OnlineClassScreen());
                },
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.r))),
                    backgroundColor: MaterialStatePropertyAll(buttonColor)),
                width: 211.w,
                height: 44.h),
          )
        ],
      ),
    );
  }
}
