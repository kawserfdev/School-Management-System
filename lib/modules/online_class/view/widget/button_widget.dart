import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  String label;
  double? fontSize;
  Function()? onPressed;
  Color? backgroundColor;
  Size? minimumSize;
  OutlinedBorder? shape;
  MyButton({
    super.key,
    required this.label,
    required this.fontSize,
    required this.onPressed,
    required this.backgroundColor,
    required this.minimumSize,
    required this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: minimumSize,
        shape: shape,
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: whiteColor,
        ),
      ),
    );
  }
}
