import 'dart:async';
import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/auth/view/screen/login_screen.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
// import 'package:aladin/modules/home/view/screens/home_screen.dart';
// import 'package:aladin/modules/onbording/view/componant.dart';
// import 'package:aladin/modules/onbording/view/onbording_screen.dart';
// import 'package:aladin/modules/splash/select_language.dart';
// import 'package:aladin/modules/splash/tearms_and_condition.dart';
// import 'package:aladin/states/data/prefs.dart';
import 'package:aladin/widget/custom_btn.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class SplashScreenTwo extends StatefulWidget {
  static String routeName = '/splashTwo';

  const SplashScreenTwo({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenTwo> {
  bool _hasInternet = true;

  Future<void> _checkInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        _hasInternet = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _checkInternet();
    Future.delayed(
      const Duration(seconds: 2),
      //go home page
      () {
        /* print(Preference.getIsFristOnbordingFlag());
        if (Preference.getIsFristOnbordingFlag()) {
          if (Preference.getLoggedInFlag()) {
            Get.offAndToNamed(HomeScreen.routeName);
          } else {
            Get.offAndToNamed(LoginPage.routeName);
          }
        } else {
          print(Preference.getIsFristOnbordingFlag());
          Get.offAndToNamed(Onboard.routeName);
        }*/
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/splash_two.png',
                fit: BoxFit.cover,
                // height: double.infinity,
                // width: double.infinity,
                width: 300.w,
                height: 300.h,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            addH(50.h),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "     Welcome To \nLearning",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: ConstantStrings.kAppInterRegular,
                            color: ConstantColors.normalTextColor,
                            fontSize: 32.sp)),
                    TextSpan(
                        text: " Campus",
                        style: TextStyle(
                            fontFamily: ConstantStrings.kAppInterBold,
                            color: Color(0xFFF7932B),
                            fontWeight: FontWeight.w500,
                            fontSize: 36.sp),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //Get.to(() => RegistrationPage());
                          })
                  ],
                ),
              ),
            ),
            addH(100.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: CustomBtn(
                btnColor: Color(0xFFF7932B),
                btnTxt: 'Get Started',
                btnBorderColor: Color(0xFFF7932B),
                btnSize: Size(
                  double.infinity,
                  60.h,
                ),
                onPressedFn: () {
                  _hasInternet
                      ? Get.to(const LoginPanealScreen())
                      : ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.red,
                            content: Row(
                              children: [
                                Icon(
                                  Icons.signal_wifi_connected_no_internet_4,
                                  color: whiteColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Please check your internet',
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                    fontFamily: 'ARLRDBD',
                                  ),
                                ),
                              ],
                            ),
                            // Set the duration of the message
                          ),
                        );
                  // Get.toNamed(SplashScreenThree.routeName);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => LoginPanealScreen(),
                  //     ));
                },
              ),
            ),
          ]),
    );
  }
}
