import 'package:aladin/modules/helpcenter/module/view/widgets/chat_widget.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationssScreen extends StatelessWidget {
  const NotificationssScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
            appBar: globalAppbar(context, 'Notification', () {
              Get.back();
            }),
            body: Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.roboto(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 30.h),
                    Text(
                      'Yesterday',
                      style: GoogleFonts.roboto(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 10.h),
                    const Chat_widgets(),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
