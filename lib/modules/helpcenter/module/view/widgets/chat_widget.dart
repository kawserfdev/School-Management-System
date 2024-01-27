import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Chat_widgets extends StatelessWidget {
  const Chat_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/helpcenter/Ellipse185.png',
          height: 45.h,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Craig Levin',
              style: GoogleFonts.roboto(fontSize: 16.sp),
            ),
            SizedBox(height: 5.h),
            Text(
              'Quis aliquet integer massa est.',
              style: GoogleFonts.roboto(fontSize: 12.sp),
            ),
          ],
        ),
        const Spacer(),
        const Text('10.00 pm')
      ],
    );
  }
}
