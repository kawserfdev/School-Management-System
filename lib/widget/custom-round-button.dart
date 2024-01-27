import 'package:aladin/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.tap,
  });
  final String title;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(70, 50)),
          backgroundColor: MaterialStatePropertyAll(ConstantColors.indigo)),
      onPressed: tap,
      child: Text(
        title,
        style: GoogleFonts.actor(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),
      ),
    );
  }
}
