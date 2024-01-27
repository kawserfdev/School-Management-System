import 'package:aladin/constants/string.dart';
import 'package:aladin/modules/leave/screen/preview_screen.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/online_class/view/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants/color.dart';
import '../../../../helper/helper.dart';
import '../../../../widget/custom-text.dart';
import '../../../../widget/dropdown-border-round.dart';
import '../../../widget/global-appbar.dart';

// ignore: camel_case_types
class Apply_For_Leave2 extends StatefulWidget {
  const Apply_For_Leave2({super.key});

  @override
  State<Apply_For_Leave2> createState() => _Apply_For_Leave2State();
}

class _Apply_For_Leave2State extends State<Apply_For_Leave2> {
  String _class = "Select type";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Apply for leave", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Leave type",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select type"],
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
          Row(
            children: [
              TextW(
                title: "Start Date",
                size: 16.sp,
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 45.w),
                child: TextW(
                  title: "End Date",
                  size: 16.sp,
                ),
              ),
            ],
          ),
          addH(20.h),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48.h,
                  width: 126.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color(0xFFE8E9E2),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'mm/dd/yyyy',
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 48.h,
                  width: 126.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color(0xFFE8E9E2),
                    ),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'mm/dd/yyyy',
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Total Days",
                size: 16.sp,
              ),
              addH(20.h),
              Container(
                height: 48.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: const Color(0xFFE8E9E2),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '07',
                    contentPadding: EdgeInsets.only(left: 10.w),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          addH(20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Reason",
                size: 16.sp,
              ),
              SizedBox(
                height: 0.015.sh,
              ),
              Container(
                height: 80.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: const Color(0xFFE8E9E2),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 10.w, top: 60.w, right: 10.w),
                    hintText: 'Details',
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 16.sp,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  maxLines: 5, // <-- SEE HERE
                  minLines: 1, // <-- SEE HERE
                ),
              ),
            ],
          ),
          addH(20.h),
          DottedBorder(
            borderType: BorderType.RRect,
            strokeWidth: 0.5,
            dashPattern: const [8, 10],
            radius: const Radius.circular(12),
            padding: EdgeInsets.all(36.w),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/Group 99836.png',
                    width: 71.w,
                    height: 45.h,
                    fit: BoxFit.contain,
                  ),
                  addH(35.h),
                  const TextW(
                    title: 'Select Files to Upload Here',
                    size: 18.0,
                  ),
                  addH(14.h),
                  TextW(
                    title: 'Maximum file size 50 MB',
                    fontFamily: ConstantStrings.kAppInterLight,
                    color: ConstantColors.red,
                  ),
                  addH(18.h),
                  MyButton(
                    label: 'Upload File',
                    fontSize: 18.24.sp,
                    onPressed: () {},
                    backgroundColor: appBarColor,
                    minimumSize: Size(160.8.w, 41.27.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                ],
              ),
            ),
          ),
          addH(50.h),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(158.w, 48.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    side: BorderSide(color: buttonColor, width: 1.w),
                  ),
                  backgroundColor: whiteColor,
                ),
                onPressed: () {},
                child: Text(
                  'Cencel',
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              MyButton(
                label: 'Apply',
                fontSize: 16.sp,
                onPressed: () {
                  Get.to(() => Preview());
                },
                backgroundColor: appBarColor,
                minimumSize: Size(158.w, 48.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
