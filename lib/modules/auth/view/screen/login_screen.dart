import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../home/view/screens/home_screen.dart';
import '../../../online_class/view/widget/dropdown_widget.dart';
import 'enter_number.dart';

// import 'package:login_paneal/logginpaneal/view/screen/enter_number.dart';
// import 'package:login_paneal/logginpaneal/view/widgets/dropdown.dart';

class LoginPanealScreen extends StatelessWidget {
  const LoginPanealScreen({super.key});

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
                    Image.asset(
                      'assets/login-images/SchoolBuilding.png',
                      height: 189.h,
                      width: 375.w,
                      // width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 50.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Text(
                        'Student ID',
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
                          hintText: 'Enter ID',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Text(
                        'Select Your Branch',
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
                      child: const MyDropdownWidget(),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Text(
                        'Passcode',
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
                          hintText: 'Enter Passcode',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/login-images/Group.png',
                            color: Color(0xFFF7932B),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT Bold',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              // Get.to(PasscodeSettingPage());
                              Get.to(const EnterNumberScreen());
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT Bold',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.h),
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
                          // Get.to(const EnterNumberScreen());
                          Get.toNamed(HomeScreen.routeName);
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'Arial Rounded MT Bold',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
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
