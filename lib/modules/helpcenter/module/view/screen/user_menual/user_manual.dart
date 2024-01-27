import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../model/user_menual_model.dart';

class UserManualScreen extends StatelessWidget {
  const UserManualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userMenual = UserMenualModel.items();
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: globalAppbar(context, 'User Menual', () {
            Get.back();
          }),
          body: Padding(
            padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/helpcenter/UserManual1.png',
                  height: 233.h,
                  width: 326.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 30.h),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1,
                    ),
                    itemCount: userMenual.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
//? uses for move to another pages.
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => userMenual[index].widget,
                          //   ),
                          // );
                          Get.to(userMenual[index].widget);
                        },
                        child: Container(
                          height: 200.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
//? This image is calling from onlineClass model..
                              image: AssetImage(userMenual[index].imgUrl),
                            ),
                            color: userMenual[index].color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 120.h),
                            child: Text(
//? This title is calling from onlineClass model..
                              userMenual[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'ARLRDBD',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
