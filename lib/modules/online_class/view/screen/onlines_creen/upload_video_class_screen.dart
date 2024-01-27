import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../model/upload_video_model.dart';
import '../colors_pattern-online.dart';

class UVCScreen extends StatelessWidget {
  const UVCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uploadClass = UploadVideoClass.items();
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            centerTitle: true,
            title: Text(
              'Upload Video Class',
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
            padding: EdgeInsets.only(top: 20.h, left: 30.w, right: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/onlineclass/UV2.png',
                  height: 286.h,
                  width: 327.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1,
                    ),
                    itemCount: uploadClass.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => uploadClass[index].widget,
                          //   ),
                          // );
                          Get.to(uploadClass[index].widget);
                        },
                        child: Container(
                          height: 151.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
                              image: AssetImage(uploadClass[index].imgUrl),
                            ),
                            color: uploadClass[index].color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 120.h),
                            child: Text(
                              uploadClass[index].title,
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
