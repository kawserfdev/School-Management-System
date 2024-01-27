// import 'package:aladin/constants/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class HelpItem extends StatelessWidget {
  const HelpItem({
    super.key,
    required this.title,
    required this.image,
    required this.tap,
    required this.color,
  });
  final String title;
  final String image;
  final GestureTapCallback tap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: tap,
      child: Container(
        width: size.width * 0.41,
        height: 160,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fontFamily: 'Arial Rounded MT Bold'),
            )
          ],
        ),
      ),
    );
  }
}
