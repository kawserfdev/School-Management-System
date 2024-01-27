import 'package:aladin/modules/leave/screen/apply_for_leave2.dart';
import 'package:aladin/modules/leave/screen/leave-history.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ApplyForLeave extends StatelessWidget {
  const ApplyForLeave({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      color: appBarColor,
      child: SafeArea(
          child: Scaffold(
        appBar: globalAppbar(context, "Leave", () {
          Get.back();
        }),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 0.2.sh,
                  width: 1.sw,
                  image: const AssetImage(
                      'assets/images/header_apply_for_leave.png'),
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const Apply_For_Leave2());
                      },
                      child: Container(
                        height: 0.18.sh,
                        width: 0.4.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffFFE7E9),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                height: 0.06.sh,
                                width: 0.18.sw,
                                image: const AssetImage(
                                  'assets/images/apply.png',
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Apply for Leave',
                              style: TextStyle(
                                  fontFamily: 'Arial Rounded MT Bold',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff17161B)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const LeaveHistoryScreen());
                      },
                      child: Container(
                        height: 0.18.sh,
                        width: 0.4.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffFCFFEB),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 0.06.sh,
                              width: 0.18.sw,
                              image: const AssetImage(
                                'assets/images/histry_Leave.png',
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Leave History',
                              style: TextStyle(
                                  fontFamily: 'Arial Rounded MT Bold',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff17161B)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                Text(
                  'Application Status',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff17161B)),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  height: 0.05.sh,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '15.8.2023',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff17161B)),
                        ),
                        Text(
                          'Sick Leave',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff17161B)),
                        ),
                        Text(
                          'Approve',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff3D9D0F)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 0.05.sh,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '15.8.2023',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff17161B)),
                        ),
                        Text(
                          'Sick Leave',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff17161B)),
                        ),
                        Text(
                          'Decline',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xffFF6767)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 0.05.sh,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '15.8.2023',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff17161B)),
                        ),
                        Text(
                          'Sick Leave',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff17161B)),
                        ),
                        Text(
                          'Pending',
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xff7093EE)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
