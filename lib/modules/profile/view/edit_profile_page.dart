import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/widget/border_gradian_color.dart';
import 'package:aladin/widget/custom_appbar.dart';
import 'package:aladin/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../helper/helper.dart';

class EditProfilePage extends StatefulWidget {
  final routeName = "/editProfile";
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String langValue = "Language";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Edit Profile",
        height: 75.h,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 10.h),
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontSize: 20.sp, fontFamily: ConstantStrings.kAppInterBold),
              ),
            ),
            Divider(
              color: ConstantColors.grayShade,
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addH(10),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: ConstantColors.grayBlack,
                        fontFamily: ConstantStrings.kAppInterRegular),
                    controller: TextEditingController(text: "Sherif Rahman"),
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: const Icon(Icons.account_circle_outlined),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ConstantColors.grayBlack)),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: ConstantColors.grayShade)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ConstantColors.grayShade),
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                  addH(10),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: ConstantStrings.kAppInterRegular),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: const Icon(Icons.email_outlined),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ConstantColors.grayShade)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ConstantColors.grayShade),
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                  addH(10),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: ConstantStrings.kAppInterRegular),
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: Icon(Icons.phone),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: ConstantColors.grayShade)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ConstantColors.grayShade),
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                  addH(10),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: ConstantStrings.kAppInterRegular),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: ConstantColors.grayShade)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ConstantColors.grayShade),
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                  addH(10),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: ConstantStrings.kAppInterRegular),
                    decoration: InputDecoration(
                      hintText: 'Retype Password',
                      hintStyle: TextStyle(
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: ConstantColors.grayShade)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ConstantColors.grayShade),
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                  addH(10),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ConstantColors.grayShade,
                          width: 0.5,
                        )),
                    child: ExpansionTile(
                      title: Text(
                        langValue,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: ConstantStrings.kAppInterRegular),
                      ),
                      leading: const Icon(Icons.g_translate_outlined),
                      children: [
                        ListTile(
                          onTap: () {
                            setState(() {
                              langValue = "Bangla";
                            });
                          },
                          title: Text(
                            "Bangla",
                            style: TextStyle(
                                fontFamily: ConstantStrings.kAppInterRegular),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            setState(() {
                              langValue = "English";
                            });
                          },
                          title: Text("English"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Text(
                      "Address Book",
                      style: TextStyle(
                          color: ConstantColors.grayBlack,
                          fontFamily: ConstantStrings.kAppInterBold,
                          fontSize: 18.sp),
                    ),
                  ),

                  addH(20),
                  CustomElevatedButton(
                    width: double.infinity,
                    height: 50.h,
                    onPressed: () {},
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontFamily: ConstantStrings.kAppInterBold,
                          fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
