import 'package:aladin/constants/color.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/onbording/view/componant.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
import 'package:aladin/modules/successfull/success-full.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:aladin/widget/global-appbar.dart';
import '../../../../widget/dropdown-border-round.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenualAttendacePage extends StatefulWidget {
  static String attendanceRoute = "/menual-attendance";
  const MenualAttendacePage({super.key});

  @override
  State<MenualAttendacePage> createState() => _MenualAttendacePageState();
}

class _MenualAttendacePageState extends State<MenualAttendacePage> {
  String classs = "Select Class";
  String _shift = "Select Shift";
  String _section = "Select Section";
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Manual Attendance", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        children: [
          SizedBox(
            width: double.infinity,
            child: CustomTextField(
              type: TextInputType.number,
              hintText: "Enter Date",
              title: "Date",
              controller: textEditingController,
            ),
          ),
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
                    value: classs,
                    onChanged: (value) {
                      setState(() {
                        classs = value;
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
          SizedBox(
            width: double.infinity,
            child: CustomTextField(
              type: TextInputType.number,
              hintText: "Enter Roll",
              title: "Roll Number",
              controller: textEditingController,
            ),
          ),
          addH(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: CustomButton(
                widget: TextW(
                  title: "Add Attendance",
                  color: Colors.white,
                  size: 16.sp,
                ),
                onPressed: () {
                  Get.to(SuccessFullPage(
                      successFullMessage: "Successfully Added\nAttendance"));
                },
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r))),
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
