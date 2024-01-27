// ignore_for_file: file_names

import 'package:aladin/constants/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:aladin/constants/color.dart';

AppBar globalAppbar(
    BuildContext context, String title, GestureTapCallback tap) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        fontFamily: ConstantStrings.kAppInterBold,
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    // toolbarHeight: 80,
    leading: GestureDetector(
      onTap: tap,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          top: 5.w,
          bottom: 5.w,
        ),
        child: Container(
            padding:
                EdgeInsets.only(top: 5.w, bottom: 5.w, left: 10.w, right: 10.w),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Image.asset(
              'assets/icons/back.png',
              color: Color(0xFFF7932B),
            )),
      ),
    ),
    backgroundColor: Color(0xFFF7932B),
  );
}
