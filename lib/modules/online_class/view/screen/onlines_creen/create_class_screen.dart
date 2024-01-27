import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/button_widget.dart';
import '../../widget/simple_dropdown.dart';
import '../colors_pattern-online.dart';

class CreateClassScreen extends StatelessWidget {
  const CreateClassScreen({super.key});

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
            appBar: AppBar(
              elevation: 0,
              backgroundColor: appBarColor,
              centerTitle: true,
              title: Text(
                'Create Class',
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
            body: Padding(
              padding: EdgeInsets.only(top: 40.h, left: 30.w, right: 30.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Class',
                      style: TextStyle(
                        fontFamily: 'ARLRDBD',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const SimpleDropdownWidget(),
                    SizedBox(height: 10.h),
                    Text(
                      'Subject',
                      style: TextStyle(
                        fontFamily: 'ARLRDBD',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const SimpleDropdownWidget(),
                    SizedBox(height: 10.h),
                    Text(
                      'Shift',
                      style: TextStyle(
                        fontFamily: 'ARLRDBD',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const SimpleDropdownWidget(),
                    SizedBox(height: 10.h),
                    Text(
                      'Time',
                      style: TextStyle(
                        fontFamily: 'ARLRDBD',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const SimpleDropdownWidget(),
                    SizedBox(height: 10.h),
                    Text(
                      'Date',
                      style: TextStyle(
                        fontFamily: 'ARLRDBD',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const SimpleDropdownWidget(),
                    SizedBox(height: 10.h),
                    Text(
                      'Class Link',
                      style: TextStyle(
                        fontFamily: 'ARLRDBD',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 18.h,
                      cursorWidth: 1.w,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12.w),
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
                        hintText: '451-58441-85',
                        hintStyle:
                            TextStyle(fontFamily: 'ARLRDBD', fontSize: 16.sp),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Center(
                      child: MyButton(
                        label: 'Create Class',
                        fontSize: 18.24.sp,
                        onPressed: () {},
                        backgroundColor: buttonColor,
                        minimumSize: Size(172.9.w, 42.27.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
