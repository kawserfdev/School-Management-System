import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/view/screen/new_passcode_page.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
import 'package:aladin/modules/routine/widget/button.dart';
// import 'package:aladin/modules/routine/widget/custom_appbar.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PasscodeSettingPage extends StatelessWidget {
  const PasscodeSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
          title: 'Reset Passcode',
          tap: () {
            Get.back();
          }),
      // CustomAppBar(
      //   title: 'Reset Passcode',
      //   height: 120.h,
      //   leading: Container(
      //     padding: const EdgeInsets.all(10),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(100),
      //     ),
      //     child: Image.asset(
      //       'assets/routine/arrow-small-left.png',
      //       height: 24.h,
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 30.h,
              ),
              child: Column(
                children: [
                  const CustomTextField(
                    title: 'Enter Your Registered Phone Number',
                  ),
                  const CustomTextField(
                    title: 'Please Provide Verification Code',
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(const NewPassCodePage()),
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ,
                    //     )),
                    child: Button(
                      size: 160.sp,
                      title: 'Save',
                      color: appBarColor,
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
