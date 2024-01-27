import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/color.dart';

class TotalDues extends StatelessWidget {
  const TotalDues({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: ConstantColors.softBg,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total Dues",
            style: TextStyle(fontSize: 16.sp, fontFamily: "Roboto"),
          ),
          Text(
            "2500",
            style: TextStyle(fontSize: 16.sp, fontFamily: "Roboto"),
          ),
        ],
      ),
    );
  }
}
