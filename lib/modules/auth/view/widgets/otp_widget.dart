import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../screen/change_password.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  bool hasError = false;
  String currentText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PinCodeTextField(
          pinBoxHeight: 50.h,
          pinBoxWidth: 50.w,
          controller: otpController,
          pinBoxRadius: 10.r,
          highlight: true,
          highlightPinBoxColor: const Color(0xFFEBEEFF),
          pinBoxColor: const Color(0xFFEBEEFF),
          highlightColor:
              const Color(0xFFEBEEFF), // Color of the selected/active field
          defaultBorderColor:
              const Color(0xFFEBEEFF), // Color of inactive fields
          hasTextBorderColor:
              const Color(0xFFEBEEFF), // Color of fields with text
          maxLength: 6,
          onTextChanged: (value) {
            setState(() {
              currentText = value;
            });
          },
          onDone: (value) {
            // Call a function to verify the OTP
            print('OTP entered: $value');
          },
        ),
        // SizedBox(height: 16),
        // Text(
        //   hasError ? '' : 'Please fill up all the cells properly',
        //   style: TextStyle(color: Colors.red),
        // ),
        SizedBox(height: 240.h),
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
              // Verify the OTP here
              if (currentText.length != 8) {
                setState(() {
                  hasError = true;
                  // Navigator.push(
                  //   context,
                  //   CupertinoPageRoute(
                  //     builder: (context) => const ChangePassScreen(),
                  //   ),
                  // );
                  Get.to(const ChangePassScreen());
                });
              } else {
                setState(() {
                  hasError = false;
                });
                // Call a function to verify the OTP
                // print('OTP entered: $currentText');
              }
            },
            child: Text(
              'Confirm',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT Bold',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
