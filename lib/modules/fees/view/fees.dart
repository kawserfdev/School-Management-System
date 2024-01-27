import 'package:aladin/constants/color.dart';
import 'package:aladin/modules/my-dues/view/my-dues.dart';
import 'package:aladin/modules/pay-fees/pay-fees.dart';
import 'package:aladin/modules/pay-slip/pay-slip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/global-appbar.dart';
import '../../help-center/widget/help-item.dart';

class FeesPage extends StatelessWidget {
  const FeesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Fees", () {
        Get.back();
      }),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          SizedBox(
            height: 248.h,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/image/Fees Collections 1.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelpItem(
                color: ConstantColors.softYellow,
                tap: () {
                  Get.to(const MyDueFeesPage());
                },
                title: "My Dues",
                image: "assets/icons/My Dues.png",
              ),
              const SizedBox(
                width: 20,
              ),
              HelpItem(
                color: ConstantColors.softsky,
                tap: () {
                  Get.to(const PayFeesPage());
                },
                title: "Pay Fees",
                image: "assets/icons/Pay Fees.png",
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelpItem(
                color: const Color(0xfffff8eacc).withOpacity(0.5),
                tap: () {
                  Get.to(const PaySlipPage());
                },
                title: "Pay Slip",
                image: "assets/icons/pay slip 1.png",
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar noticeAppbar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Help Center",
        style: GoogleFonts.actor(
            color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w500),
      ),
      toolbarHeight: 80,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Image.asset('assets/icons/back.png')),
      ),
      backgroundColor: ConstantColors.indigo,
    );
  }
}

class TopImage extends StatelessWidget {
  const TopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248.h,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset('assets/image/Result 1.png'),
      ),
    );
  }
}
