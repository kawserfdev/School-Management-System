import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/string.dart';

class TextW extends StatelessWidget {
  const TextW({
    super.key,
    required this.title,
    this.size,
    this.fontFamily,
    this.color,
    this.textAlign,
    this.weight,
  });

  final String title;
  final double? size;
  final String? fontFamily;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
          color: color ?? Colors.black,
          fontFamily: fontFamily ?? ConstantStrings.kAppInterBold,
          fontSize: size ?? 14.sp,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
