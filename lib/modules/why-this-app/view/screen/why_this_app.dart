import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyThisAppScreen extends StatelessWidget {
  const WhyThisAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: globalAppbar(context, 'Why This App', () {
            Get.back();
          }),
          body: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 20.h,
            ),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Container(
                    width: 327.w,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        side: BorderSide(
                          width: 0.03.w,
                        ),
                      ),
                      child: Column(
                        children: [
                          ExpansionTile(
                            iconColor: Colors.black,
                            title: Text(
                              'What can you do with this app ?',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            children: [
                              ListTile(
                                title: Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.w,
                                      right: 10.w,
                                      top: 0.h,
                                      bottom: 20.h),
                                  child: Text(
                                    'vulputate. Blandit nec sodales eros eget pharetra urna iaculis enim sollicitudin. Arcu a congue nulla feugiat iaculis. Congue ut pellentesque eget viverra. Habitant egestas iaculis neque nisi massa porttitor euismod accumsan nec.',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              //? 1st reason why people should use this app..
            ),
          ),
        ),
      ),
    );
  }
}
