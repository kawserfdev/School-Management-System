import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../constants/color.dart';
import '../../../constants/string.dart';
import '../../../widget/custom-text.dart';
import '../../../widget/global-appbar.dart';

class ViewAdmitCardPage extends StatelessWidget {
  const ViewAdmitCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: globalAppbar(context, "View Admit Card", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 28.h),
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              splashRadius: 30.h,
              onPressed: () {
                Get.to(
                    SuccessFull(successFullMessage: "Successfully Downloaded"));
              },
              icon: Image.asset(
                "assets/icons/downloadicon.png",
                color: buttonColor,
              ),
            ),
          ),
          addH(8.h),
          DottedBorder(
            borderType: BorderType.RRect,
            strokeWidth: 1,
            dashPattern: const [3, 3],
            // radius: Radius.circular(12.r),
            child: Container(
              color: const Color.fromARGB(255, 255, 246, 232),
              padding: EdgeInsets.symmetric(vertical: 20.h),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/icons/logo.png",
                        width: 65.w,
                        height: 65.h,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        children: [
                          addH(6),
                          TextW(
                            title: 'Learning Campus School',
                            color: ConstantColors.primaryColor,
                            size: 16.sp,
                          ),
                          TextW(
                            title: 'www.learningcampus.com',
                            color: ConstantColors.primaryColor,
                            fontFamily: ConstantStrings.kAppInterRegular,
                            size: 13.sp,
                          ),
                          addH(5),
                          TextW(
                            title: 'Uttara, Dhaka',
                            color: Colors.black,
                            fontFamily: ConstantStrings.kAppInterRegular,
                            size: 13.sp,
                          ),
                          addH(5),
                          TextW(
                            title: 'Half Early Exam',
                            color: Colors.black,
                            fontFamily: ConstantStrings.kAppInterRegular,
                            weight: FontWeight.bold,
                            size: 13.sp,
                          ),
                          addH(18.h),
                          Column(
                            children: [
                              TextW(
                                title: 'ADMIT CARD',
                                size: 18.sp,
                                fontFamily: ConstantStrings.kAppInterLight,
                                weight: FontWeight.bold,
                                color: ConstantColors.red,
                              ),
                              SizedBox(
                                width: 110.w,
                                child: Divider(
                                  color: ConstantColors.red,
                                  height: 2,
                                  thickness: 2,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/student.png",
                        width: 65.w,
                        height: 65.h,
                      ),
                    ],
                  ),
                  addH(30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AdmitCardTextItem(
                                  title: "Name",
                                  value: "John Smith",
                                ),
                                addH(10),
                                const AdmitCardTextItem(
                                  title: "Id No",
                                  value: "012234",
                                ),
                                addH(10),
                                const AdmitCardTextItem(
                                  title: "Shift",
                                  value: "Day",
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AdmitCardTextItem(
                                  title: "Class",
                                  value: "Six",
                                ),
                                addH(10),
                                const AdmitCardTextItem(
                                  title: "Roll",
                                  value: "01",
                                ),
                                addH(10),
                                const AdmitCardTextItem(
                                  title: "Section",
                                  value: "A",
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  addH(40.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Dash(
                              dashLength: 1,
                              length: 132,
                              dashColor: Colors.black,
                              dashGap: 2,
                            ),
                            addH(4),
                            TextW(
                              size: 11.sp,
                              weight: FontWeight.w500,
                              title: "Signature of Account Officer",
                              fontFamily: ConstantStrings.kAppInterSemiBold,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Dash(
                              dashLength: 1,
                              length: 95,
                              dashColor: Colors.black,
                              dashGap: 2,
                            ),
                            addH(4),
                            TextW(
                              size: 11.sp,
                              weight: FontWeight.w500,
                              title: "Signature of Principal",
                              fontFamily: ConstantStrings.kAppInterSemiBold,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdmitCardTextItem extends StatelessWidget {
  const AdmitCardTextItem({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextW(
          title: title,
          fontFamily: ConstantStrings.kAppInterRegular,
        ),
        addW(10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: title == "Roll"
                      ? EdgeInsets.only(left: (title == "Roll") ? 22.w : 0)
                      : EdgeInsets.only(left: (title == "Class") ? 12.w : 0),
                  child: const Text(": "),
                ),
                TextW(
                  title: value,
                  fontFamily: ConstantStrings.kAppInterRegular,
                ),
              ],
            ),
            addH(3),
            Padding(
              padding: title == "Roll"
                  ? EdgeInsets.only(left: (title == "Roll") ? 22.w : 0)
                  : EdgeInsets.only(left: (title == "Class") ? 12.w : 0),
              child: const Dash(
                dashLength: 1,
                length: 80,
                dashColor: Colors.black,
                dashGap: 2,
              ),
            ),
          ],
        )
      ],
    );
  }
}
