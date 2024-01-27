import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../transport/view/widgets/custom-form-field.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

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
              title: 'Amdadul Haque',
              tap: () {
                Get.back();
              },
            ),
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
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/helpcenter/Rectangle.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Amdadul Haque',
                    style: TextStyle(
                      fontFamily: "ARLRDBD",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'ARLRDBD',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Bangla Teacher',
                    style: GoogleFonts.roboto(fontSize: 12.sp),
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
                                    fontWeight: FontWeight.bold,
                                  ),
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
                          title: 'Teacher’s ID',
                          hintText: '12536776575',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Designation',
                          hintText: 'Associate Professor of English',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Mobile Number',
                          hintText: '123456789',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Address',
                          hintText: 'Mirpur,Dhaka',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Date of Birth',
                          hintText: '15.8.2023',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Age',
                          hintText: '27',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Joining Date',
                          hintText: 'August 17,2023',
                        ),
                        CustomFormField(
                          fontFamily: "ARLRDBD",
                          title: 'Graduated From',
                          hintText: 'Dhaka University',
                        ),
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
