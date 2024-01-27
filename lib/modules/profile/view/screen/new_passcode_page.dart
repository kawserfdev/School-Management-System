import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/view/screen/profile_page.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
import 'package:aladin/modules/routine/widget/button.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewPassCodePage extends StatelessWidget {
  const NewPassCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
        title: 'Set New Passcode',
        tap: () {
          Get.back();
        },
      ),
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
                    title: 'New Passcode',
                  ),
                  const CustomTextField(
                    title: 'Confirm Passcode',
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(const ProfilePage()),
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
