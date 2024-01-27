import 'package:aladin/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.textInputType,
  });
  final TextEditingController controller;
  final String hint;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          border: Border.all(color: ConstantColors.border),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
            isCollapsed: true,
            hintText: hint,
            labelStyle: GoogleFonts.actor(fontSize: 13),
            border: InputBorder.none),
      ),
    );
  }
}
