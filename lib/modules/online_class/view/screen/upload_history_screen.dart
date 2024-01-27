import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/dropdown_widget.dart';

class VideoHistoryScreen extends StatelessWidget {
  const VideoHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
//? Here is starting appBar section..
            appBar: AppBar(
              elevation: 0,
              backgroundColor: appBarColor,
              centerTitle: true,
              title: Text(
                'Upload History',
                style: TextStyle(
                  fontFamily: 'ARLRDBD',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: whiteColor,
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
                        'assets/onlineclass/circale.svg',
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
//! Body section is starting
            body: Padding(
              padding: EdgeInsets.only(
                top: 30.h,
                left: 30.w,
                right: 30.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Class',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    cursorColor: Colors.black,
                    cursorHeight: 18.h,
                    cursorWidth: 1.w,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.w, right: 10.w),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.03.w,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.03.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Subject',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  const MyDropdownWidget(),
                  SizedBox(height: 40.h),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: SizedBox(
                            height: 167.h,
                            width: 227.w,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 0.2.w,
                                ),
                              ),
                              elevation: 0.5,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.only(top: 25.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bangla 1st Paper Class',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              'Topic: Poem',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              'Date: 12/08/2023',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SvgPicture.asset(
                                            'assets/onlineclass/Vector.svg'),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.w, top: 10.w),
                                      child: Image.asset(
                                        'assets/onlineclass/download.png',
                                        height: 33.h,
                                        width: 33.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
