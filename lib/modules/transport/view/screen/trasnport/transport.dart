import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../model/transport-model.dart';
// import '../../widgets/colors-pattern.dart';

class TransportScreen extends StatelessWidget {
  const TransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transportModel = TransportMoel.items();
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: GlobalAppbar2(
              title: 'Trasnport',
              tap: () {
                Get.back();
              }),
          body: Padding(
            padding: EdgeInsets.only(top: 35.h, left: 30.w, right: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/transport-images/Transport1.png',
                  height: 150.h,
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
                    itemCount: transportModel.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
//? uses for move to another pages.
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) =>
                          //         transportModel[index].widget,
                          //   ),
                          // );
                          Get.to(transportModel[index].widget);
                        },
                        child: Container(
                          height: 200.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            image: DecorationImage(
//? This image is calling from transport model..
                              image: AssetImage(transportModel[index].imgUrl),
                            ),
                            color: transportModel[index].color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 120.h),
                            child: Text(
//? This title is calling from transport model..
                              transportModel[index].title,
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
