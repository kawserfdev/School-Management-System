import 'package:aladin/constants/color.dart';
import 'package:aladin/modules/all-term/view/term.dart';
import 'package:aladin/modules/teacher-modules/result-sheet/result-sheet.dart';
import 'package:aladin/widget/dropdown-border-round.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../helper/helper.dart';
import '../../../../widget/custom-text.dart';
import '../../../../widget/global-appbar.dart';
import '../../../onbording/view/componant.dart';

class ViewResultPage extends StatefulWidget {
  const ViewResultPage({super.key});

  @override
  State<ViewResultPage> createState() => _ViewResultPageState();
}

class _ViewResultPageState extends State<ViewResultPage> {
  String _class = "Select Class";
  String _shift = "Select Shift";
  String _section = "Select Section";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "View Result", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Class",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Class", "One", "Two", "Three"],
                    value: _class,
                    onChanged: (value) {
                      setState(() {
                        _class = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Shift",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Shift", "Night", "Day"],
                    value: _shift,
                    onChanged: (value) {
                      setState(() {
                        _shift = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Section",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Section", "A", "B"],
                    value: _section,
                    onChanged: (value) {
                      setState(() {
                        _section = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Subject",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Section", "A", "B"],
                    value: _section,
                    onChanged: (value) {
                      setState(() {
                        _section = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Exam Platform",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Section", "A", "B"],
                    value: _section,
                    onChanged: (value) {
                      setState(() {
                        _section = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Exam Term",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Section", "A", "B"],
                    value: _section,
                    onChanged: (value) {
                      setState(() {
                        _section = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: CustomButton(
                widget: TextW(
                  title: "Next",
                  color: Colors.white,
                  size: 16.sp,
                ),
                onPressed: () {
                  Get.to(const ResultSheetPage());
                },
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r))),
                    backgroundColor:
                        MaterialStatePropertyAll(ConstantColors.indigo)),
                width: 191.w,
                height: 48.h),
          )
        ],
      ),
    );
  }
}
