import 'package:aladin/constants/string.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../model/notice-board-item.dart';

class NoticeBoardItem extends StatelessWidget {
  const NoticeBoardItem({
    super.key,
    required this.item,
    this.isTitleHide = false,
  });
  final NoticeBoardItemModel item;
  final bool? isTitleHide;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isTitleHide == false
                  ? Text(
                      item.title,
                      style: TextStyle(
                          fontFamily: ConstantStrings.kAppInterRegular,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  : const SizedBox.shrink(),
              isTitleHide == false
                  ? const SizedBox(
                      height: 10,
                    )
                  : const SizedBox.shrink(),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    ConstantStrings.loremText,
                    style: TextStyle(
                        fontSize: 14.sp,
                        wordSpacing: 2.sp,
                        fontFamily: ConstantStrings.kAppInterRegular),
                  ),
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
                      SuccessFull(successFullMessage: "Successfully Download"),
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
    );
  }
}
