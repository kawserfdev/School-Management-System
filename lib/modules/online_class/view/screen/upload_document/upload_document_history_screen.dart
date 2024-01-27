import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../model/upload_document_history_model.dart';
import '../../widget/dropdown_widget.dart';
import '../colors_pattern-online.dart';

class UploadDocumentHistory extends StatelessWidget {
  const UploadDocumentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final uploadDocumentHistory = UploadDocementHistoryModel.item();
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
                'Upload Document History',
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
//! Body section is starting...
            body: Padding(
              padding: EdgeInsets.only(
                top: 25.h,
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
                          width: 0.1.w,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.1.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Subject',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ARLRDBD',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const MyDropdownWidget(),
                  SizedBox(height: 25.h),
//? Showing the upload document history by Listview builder..
                  Expanded(
                    child: ListView.builder(
                      itemCount: uploadDocumentHistory.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: SizedBox(
                            height: 131.h,
                            width: 327.w,
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
                                padding: EdgeInsets.only(top: 22.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                                uploadDocumentHistory[index]
                                                    .title,
                                                style: TextStyle(
                                                  fontFamily: 'ARLRDBD',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                uploadDocumentHistory[index]
                                                    .subTitle,
                                                style: TextStyle(
                                                  fontFamily: 'ARLRDBD',
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                uploadDocumentHistory[index]
                                                    .label,
                                                style: TextStyle(
                                                  fontFamily: 'ARLRDBD',
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ]),
                                        InkWell(
                                          onTap: () {
//? Go to the pdf view page.
                                            // Navigator.push(
                                            //   context,
                                            //   CupertinoPageRoute(
                                            //     builder: (context) =>
                                            //         uploadDocumentHistory[index]
                                            //             .widget,
                                            //   ),
                                            // );
                                            Get.to(uploadDocumentHistory[index]
                                                .widget);
                                          },
                                          child: Image.asset(
                                            uploadDocumentHistory[index].imgUrl,
                                            height: 53.h,
                                            width: 65.w,
                                            // fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
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
