import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'enter_otp.dart';

class EnterNumberScreen extends StatelessWidget {
  const EnterNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Image.asset(
                        'assets/login-images/ResetPassoword.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 80.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT Bold',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      //? enter id..
                      child: TextFormField(
                        cursorColor: Colors.black,
                        cursorHeight: 18.h,
                        cursorWidth: 1.w,
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFF9FAFF),
                          filled: true,
                          contentPadding: EdgeInsets.all(12.w),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Enter Number',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 200.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF7932B),
                          minimumSize: Size(327.w, 53.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => const EnterOtpScreen(),
                          //   ),
                          // );
                          Get.to(const EnterOtpScreen());
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'Arial Rounded MT Bold',
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
