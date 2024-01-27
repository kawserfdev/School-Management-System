import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/view/screen/details_profile.dart';
import 'package:aladin/modules/profile/view/screen/login_security_page.dart';
import 'package:aladin/modules/profile/view/screen/passcode_setting_page.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool switchValue = true;
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

            //profile text
            Column(
              children: [
                Text(
                  'Ajzal Hossain',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT Bold',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ID No: 123921',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 50,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.info),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          'Profile Information',
                          style: TextStyle(
                              fontFamily: 'Arial Rounded MT Bold',
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        FloatingActionButton(
                          mini: true,
                          backgroundColor: whiteColor,
                          onPressed: () {
                            Get.to(
                              const DetailsProfile(),
                            );
                          },
                          child: SvgPicture.asset('assets/profile/edit.svg'),
                        ),
                      ],
                    ),
                  ),
                  ListTileTheme(
                    minLeadingWidth: 0,
                    child: ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      childrenPadding: EdgeInsets.symmetric(horizontal: 43.w),
                      tilePadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 8.h,
                      ),
                      leading: const Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT Bold',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginSecurityPage(),
                                    )),
                                title: Text(
                                  'Login & Security',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              ListTile(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PasscodeSettingPage(),
                                    )),
                                title: Text(
                                  'Passcode Settings',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              ListTile(
                                trailing: CupertinoSwitch(
                                  value: switchValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      switchValue = value ?? false;
                                    });
                                  },
                                ),
                                title: Text(
                                  'Notification Settings',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.power_settings_new,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontFamily: 'Arial Rounded MT Bold',
                            color: Colors.red,
                            fontSize: 17.sp,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            addH(20.h)
          ],
        ),
      ),
    );
  }
}
