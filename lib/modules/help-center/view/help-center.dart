import 'package:aladin/constants/color.dart';
import 'package:aladin/modules/helpcenter/module/view/screen/emergency_contact.dart/emergency_contarct.dart';
import 'package:aladin/modules/helpcenter/module/view/screen/user_menual/user_manual.dart';
import 'package:aladin/modules/live_chat/live_chat.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/help-item.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Help Center", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        children: [
          Padding(
            padding: EdgeInsets.all(15.0.h),
            child: Image.asset('assets/image/helpcenter.png'),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelpItem(
                color: ConstantColors.softYellow,
                tap: () {
                  Get.to(const UserManualScreen());
                },
                title: "User Manual",
                image: "assets/icons/User Manual.png",
              ),
              SizedBox(
                width: 20.h,
              ),
              HelpItem(
                color: ConstantColors.softsky,
                tap: () {
                  Get.to(const EmergencyContactScreen());
                },
                title: "Emergency Contact",
                image: "assets/icons/Emergency Contact.png",
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelpItem(
                color: Color(0xffF6FFE1),
                tap: () {
                  Get.to(const LiveChatScreen());
                },
                title: "Live Chat",
                image: "assets/icons/Live Chat.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
