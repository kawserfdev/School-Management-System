import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WinGridViewItems extends StatelessWidget {
  final VoidCallback onTapCart;

  const WinGridViewItems({
    Key? key,
    required this.onTapCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 291.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:  [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(2.5, 3.7),
            blurRadius: 2,
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5655 sold out 5255",
                  style: TextStyle(
                      color: ConstantColors.normalTextColor,
                      fontSize: 12.sp,
                      fontFamily: ConstantStrings.kAppInterRegular),
                ),
                addH(5.h),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  width: 168.w,
                  barRadius: Radius.circular(10),
                  animation: true,
                  lineHeight: 10.0.h,
                  animationDuration: 2000,
                  percent: 0.9,
                  center: const Text("90.0%",
                      style: TextStyle(fontSize: 9, color: Colors.white)),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      ConstantColors.red,
                      ConstantColors.blueLight,
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.h),
                  height: 110.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/images/win_car.png',
                    ),
                    fit: BoxFit.cover,
                  )),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top:5.h,right: 5.w),
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(
                              10.r),
                        ),
                        child: Image.asset(
                          'assets/images/fav_icon.png',
                          fit: BoxFit.fill,
                        ),
                      ),),
                ),
                Positioned(
                    bottom: -20.h,
                    right: 0,
                    child: Container(
                      height: 40.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: ConstantColors.grayShade, style: BorderStyle.solid),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          'assets/images/pen_two.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ))
              ],
            ),
            addH(26.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Text("WIN: ",
                          style: TextStyle(
                            color: Colors.pink,
                            fontFamily: ConstantStrings.kAppInterBold,
                            fontSize: 16.sp,
                          )),
                      Expanded(
                        child: Text("AED40,000 cash",
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ConstantColors.grayBlack,
                              fontFamily: ConstantStrings.kAppInterSemiBold,
                              fontSize: 16.sp,
                            )),
                      ),
                    ],
                  ),
                ),
                addH(2.h),
                SizedBox(
                  child: Row(
                    children: [
                      Text("Gold Pencil: ",
                          style: TextStyle(
                            color: ConstantColors.normalTextColor,
                            fontFamily: ConstantStrings.kAppInterRegular,
                            fontSize: 13.sp,
                          )),
                      Expanded(
                        child: Text("AED50.00",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: ConstantStrings.kAppInterBold,
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            addH(10.h),
            CustomElevatedButton(
              width: double.infinity,
              height: 46.h,
              onPressed: onTapCart,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  ConstantColors.red,
                  ConstantColors.blueLight,
                ],              ),
              borderRadius: BorderRadius.circular(5),
              child: Text('Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: ConstantStrings.kAppInterBold,
                    fontSize: 16.sp,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
