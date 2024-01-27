import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../model/help_center_model.dart';
import '../../widgets/color_pattern.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final helpCenter = HelpCenterModel.items();
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            centerTitle: true,
            title: Text(
              'Help Center',
              style: TextStyle(
                fontFamily: 'ARLRDBD',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              // style: GoogleFonts.arial,
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 7.h),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/helpcenter/circale.svg',
                    ),
                    Positioned(
                      top: 7.h,
                      left: 7.w,
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 25.h, left: 30.w, right: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/helpcenter/HelpCenter1.png',
                  height: 166.h,
                  width: 322.w,
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
                    itemCount: helpCenter.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          //? uses for move to another pages.
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => helpCenter[index].widget,
                          //   ),
                          // );
                          Get.to(helpCenter[index].widget);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
                              //? This image is calling from onlineClass model..
                              image: AssetImage(helpCenter[index].imgUrl),
                            ),
                            color: helpCenter[index].color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 120.h),
                            child: Text(
                              //? This title is calling from onlineClass model..
                              helpCenter[index].title,
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
