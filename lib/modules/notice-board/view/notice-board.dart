import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routine/view/screen/successfull_page.dart';

class NoticeboardPage extends StatelessWidget {
  const NoticeboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Notice Board", () {}),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/image/noticeboard.png'),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  color: Colors.white,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 30),
                    child: SizedBox(
                      height: 400.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exam Notice',
                            style: TextStyle(
                                fontFamily: ConstantStrings.kAppInterRegular,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          addH(5.h),
                          Expanded(
                            child: Text(
                              ConstantStrings.loremText,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  wordSpacing: 2.sp,
                                  fontFamily: ConstantStrings.kAppInterRegular),
                            ),
                          ),
                          //const Expanded(child: SizedBox.shrink()),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/icons/pdficon.png',
                                height: 49,
                                width: 31,
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                  SuccessFull(
                                    successFullMessage: "Successfully Download",
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/icons/downloadicon.png',
                                  color: buttonColor,
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          /*Column(
            children: List.generate(
                noticeList.length,
                (index) => GestureDetector(
                      onTap: () {},
                      child: NoticeBoardItem(
                        item: noticeList[index],
                      ),
                    )),
          )*/
        ],
      ),
    );
  }
}
