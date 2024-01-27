import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../helper/helper.dart';
import '../../../../widget/custom-text.dart';
import '../../../../widget/dropdown-border-round.dart';
import '../../../widget/global-appbar.dart';

class SickLeaveScreen extends StatefulWidget {
  const SickLeaveScreen({super.key});

  @override
  State<SickLeaveScreen> createState() => _SickLeaveScreenState();
}

class _SickLeaveScreenState extends State<SickLeaveScreen> {
  String _class = "Select type";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: globalAppbar(context, "Sick Leave", () {
          Get.back();
        }),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextW(
                  title: "Leave type",
                  size: 16.sp,
                ),
                addH(5.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomDropdown(
                      items: const ["Select type"],
                      value: _class,
                      onChanged: (value) {
                        setState(() {
                          _class = value;
                        });
                      },
                      iconAsset: 'assets/icons/down-arrow.png'),
                )
              ],
            ),
            addH(20.h),
            Row(
              children: [
                TextW(
                  title: "Start Date",
                  size: 16.sp,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 45.w),
                  child: TextW(
                    title: "End Date",
                    size: 16.sp,
                  ),
                ),
              ],
            ),
            addH(20.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48.h,
                    width: 126.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xFFE8E9E2),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'mm/dd/yyyy',
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 126.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color(0xFFE8E9E2),
                      ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'mm/dd/yyyy',
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextW(
                  title: "Total Days",
                  size: 16.sp,
                ),
                addH(20.h),
                Container(
                  height: 48.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color(0xFFE8E9E2),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '07',
                      contentPadding: EdgeInsets.only(left: 10.w),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            addH(20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextW(
                  title: "Reason",
                  size: 16.sp,
                ),
                SizedBox(
                  height: 0.015.sh,
                ),
                Container(
                  height: 80.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color(0xFFE8E9E2),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 10.w, top: 40.w, right: 10.w),
                      hintText:
                          'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim',
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 16.sp,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    maxLines: 5, // <-- SEE HERE
                    minLines: 1, // <-- SEE HERE
                  ),
                ),
              ],
            ),
            addH(30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextW(
                  title: 'Attatched File',
                  size: 16.sp,
                ),
              ],
            ),
            addH(30.h),
            Container(
              height: 400.h,
              width: 327.w,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 0.2.w,
                  ),
                ),
                color: whiteColor,
                elevation: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in. Elementum aliquam velit natoque pharetra scelerisque. Viverra mattis fermentum leo turpis tellus. Proin malesuada sit tellus enim turpis lorem praesent tincidunt. Aliquet condimentum tempus hac sem. Ipsum congue orci bibendum vulputate. Velit varius arcu tincidunt venenatis quisque. Nam nunc odio ultrices eget quam morbi fermentum. Quis aliquet integer massa est. Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in. Elementum aliquam velit natoque pharetra scelerisque. Viverra mattis fermentum leo turpis tellus. Proin malesuada sit tellus enim turpis lorem praesent tincidunt. ',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(fontSize: 14.sp),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/onlineclass/pdf.png',
                              height: 39.h,
                              width: 32.w,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(
                                  SuccessFull(
                                    successFullMessage:
                                        'Successfully Downloaded',
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/onlineclass/download.png',
                                color: buttonColor,
                                height: 33.h,
                                width: 33.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            addH(30.h),
          ],
        ),
      ),
    );
  }
}
