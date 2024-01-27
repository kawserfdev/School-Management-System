import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'live_chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: globalAppbar(context, 'Chat', () {}),
          body: Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: ListView.builder(
              itemCount: 14,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: InkWell(
                    onTap: () {
//? go to LiveChatScreen..
                      Get.to(const LiveChatScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/helpcenter/Ellipse185.png',
                          height: 45.h,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Craig Levin',
                              style: GoogleFonts.roboto(fontSize: 16.sp),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Quis aliquet integer massa est.',
                              style: GoogleFonts.roboto(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text('10.00 pm')
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
