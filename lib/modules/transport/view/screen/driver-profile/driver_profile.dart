import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import '../../../../helpcenter/module/view/widgets/color_pattern.dart';
import '../../widgets/custom-form-field.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            appBar: GlobalAppbar2(
                title: 'Driver Profile',
                tap: () {
                  Get.back();
                }),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  //? Profile Picture..
                  SizedBox(
                    height: 100.h,
                    width: 100.h,
                    child: ClipOval(
                      child: Image.network(
                        fit: BoxFit.cover,
                        'https://media.istockphoto.com/id/171555491/photo/tour-bus-driver.jpg?s=1024x1024&w=is&k=20&c=3cuwY4kjx1ats44iI7Mvc_d6WxuQil-uD9umXxYY4Gg=',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Lorium Ipsum',
                    style: TextStyle(
                      fontFamily: "ARLRDBD",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'ARLRDBD',
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.info),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  'Profile Information',
                                  style: TextStyle(
                                      fontFamily: "ARLRDBD",
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const Column(
                      children: [
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          hintText: 'Lorium Ipsum ',
                          title: 'Full Name',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'ID No',
                          hintText: '12536776575',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'School Name',
                          hintText: 'Dhanmondi High School',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Brunch',
                          hintText: 'Dhanmondi',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'License No',
                          hintText: '123456789',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Contact No',
                          hintText: '0123456789',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'NID No',
                          hintText: '0123456789',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Car Name',
                          hintText: 'Toyota',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Car No',
                          hintText: 'AC-234223',
                        ),
                        // CustomTextField(
                        //   title: 'Joining Date',
                        //   hintText: 'August 17,2023',
                        // ),
                        // CustomTextField(
                        //   title: 'Graduated From',
                        //   hintText: 'Dhaka University',
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
