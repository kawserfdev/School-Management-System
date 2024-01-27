import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTextItem extends StatelessWidget {
  final int value;
  final int groupValue;
  final ValueChanged onChanged;
  final String text;
  final Color activeColor;

  const RadioTextItem({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.text,
    required this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Transform.scale(
          scale: 1.4,
          child: Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: activeColor,
          ),
        ),
        Text(
          text,
          style: GoogleFonts.actor(fontSize: 17),
        )
      ],
    );
  }
}
