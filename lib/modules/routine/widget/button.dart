import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../constants/string.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.size,
    required this.title,
    required this.color,
    required this.textColor,
  });

  final double size;
  final String title;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 40.h,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(
            color: appBarColor,
            width: 1,
          )),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Arial Rounded MT Bold',
            color: textColor,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
