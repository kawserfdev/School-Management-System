import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../colors_pattern-online.dart';

class UploadDocumentClass extends StatelessWidget {
  const UploadDocumentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            centerTitle: true,
            title: Text(
              'Upload Class Document',
              style: TextStyle(
                fontFamily: 'ARLRDBD',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
              // style: GoogleFonts.arial,
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 7.h),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/onlineclass/circale.svg',
                    ),
                    Positioned(
                      top: 7.h,
                      left: 7.w,
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: const Center(
            child: Text('Upload Class Document'),
          ),
        ),
      ),
    );
  }
}
