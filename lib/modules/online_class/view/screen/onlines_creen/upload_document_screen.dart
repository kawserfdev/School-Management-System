import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../model/upload_document_model.dart';
import '../colors_pattern-online.dart';

class UVDScreen extends StatelessWidget {
  const UVDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uploadDocument = UploadDocumentModel.item();
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            centerTitle: true,
            title: Text(
              'Upload Document',
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
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 30.w, right: 30.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/onlineclass/upload_d1.png',
                    height: 211.h,
                    width: 314.w,
                    // fit: BoxFit.cover,
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
                      itemCount: uploadDocument.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            //? uses for move to another pages.
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //     builder: (context) =>
                            //         uploadDocument[index].widget,
                            //   ),
                            // );
                            Get.to(uploadDocument[index].widget);
                          },
                          child: Container(
                            height: 151.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              image: DecorationImage(
                                image: AssetImage(uploadDocument[index].imgUrl),
                              ),
                              color: uploadDocument[index].color,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 110.h),
                              child: Text(
                                uploadDocument[index].title,
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
      ),
    );
  }
}
