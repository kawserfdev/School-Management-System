// ignore_for_file: file_names

// import 'package:aladin/constants/string.dart';
import 'package:flutter/material.dart';
// import 'package:aladin/constants/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar GlobalAppbar2({
  BuildContext? context,
  required String title,
  required GestureTapCallback tap,
}) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        fontFamily: 'Arial Rounded MT Bold',
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
    // toolbarHeight: 80,
    leading: GestureDetector(
      onTap: tap,
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, top: 5.w, bottom: 5.w),
        child: Container(
            padding:
                EdgeInsets.only(left: 10.w, top: 5.w, bottom: 5.w, right: 10.w),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/icons/back.png',
              color: Color(0xFFF7932B),
            )),
      ),
    ),
    backgroundColor: Color(0xFFF7932B),
  );
}
