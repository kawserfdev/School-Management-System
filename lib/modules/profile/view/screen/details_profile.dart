import 'package:aladin/modules/profile/view/screen/edit_profile_page.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
// import 'package:aladin/modules/routine/widget/custom_appbar.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../online_class/view/screen/colors_pattern-online.dart';

class DetailsProfile extends StatelessWidget {
  const DetailsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Profile',
          tap: () {
            Get.back();
          }),
      // CustomAppBar(
      //   title: 'Profile',
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
          children: [
            SizedBox(
              height: 30.h,
            ),
      
            //profile pic
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  50.r,
                ),
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/profile/profile.png',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Ajzal Hossain',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'English Teacher',
                    style: GoogleFonts.roboto(
                      // color: Colors.grey.shade600,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.info),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Profile Information',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            FloatingActionButton(
                              mini: true,
                              backgroundColor: whiteColor,
                              onPressed: () {
                                Get.to(
                                  const EditProfilePage(),
                                );
                              },
                              child:
                                  SvgPicture.asset('assets/profile/edit.svg'),
                            ),
                            // InkWell(
                            //   onTap: () => Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) =>
                            //             (),
                            //       )),
                            //   child: const Icon(Icons.edit),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        CustomTextField(
                          hintText: 'Lorium Ipsum ',
                          title: 'Full Name',
                        ),
                        CustomTextField(
                          title: 'Teacher\'s ID ',
                          hintText: '12536776575',
                        ),
                        CustomTextField(
                          title: 'Designation',
                          hintText: 'Associate Professor of English',
                        ),
                        CustomTextField(
                          title: ' School Name',
                          hintText: 'Dhanmondi High School',
                        ),
                        CustomTextField(
                          title: 'Branch',
                          hintText: 'Dhanmondi',
                        ),
                        CustomTextField(
                          title: 'Mobile Number',
                          hintText: '0123456789',
                        ),
                        CustomTextField(
                          title: 'Address',
                          hintText: 'Mirpur,Dhaka',
                        ),
                        CustomTextField(
                          title: 'Date of Birth',
                          hintText: '15.8.2023',
                        ),
                        CustomTextField(
                          title: 'Age',
                          hintText: '27',
                        ),
                        CustomTextField(
                          title: 'Joining Date',
                          hintText: 'August 17,2023',
                        ),
                        CustomTextField(
                          title: 'Graduated From',
                          hintText: 'Dhaka University',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
