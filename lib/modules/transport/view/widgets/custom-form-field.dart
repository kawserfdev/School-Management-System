// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aladin/constants/color.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aladin/modules/routine/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.title,
    this.hintText,
    this.controller,
    this.icon,
    this.type,
    this.fontFamily,
  }) : super(key: key);

  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final IconData? icon;
  final TextInputType? type;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextW(
            title: title,
            color: const Color(0xff333333),
            size: 16.sp,
            fontFamily: fontFamily,
            // fontFamily: ConstantStrings.kAppInterBold,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50.h,
            child: TextField(
              controller: controller,
              keyboardType: type ?? TextInputType.text,
              cursorColor: primaryColor1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
                hintText: hintText,
                fillColor: Colors.white,
                hintStyle: GoogleFonts.roboto(
                  color: Colors.grey.shade700,
                  fontSize: 16.sp,
                ),
                // hintStyle: TextStyle(
                // color: Colors.grey.shade700,
                // fontSize: 16,
                // ),
                suffixIcon: Icon(
                  icon,
                  color: Colors.grey.shade600,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      BorderSide(color: ConstantColors.border, width: 1.1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      BorderSide(color: ConstantColors.border, width: 1.0),
                ),
                filled: true,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
