import 'package:aladin/constants/string.dart';
import 'package:aladin/modules/notice-board/model/notice-board-item.dart';
import 'package:aladin/modules/notice-board/widget/notice-board-list-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/global-appbar.dart';

class ViewSyllabusPage extends StatelessWidget {
  const ViewSyllabusPage({super.key, required this.subject});
  final String subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, subject, () {
        Get.back();
      }),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: NoticeBoardItem(
          isTitleHide: true,
          item: NoticeBoardItemModel(
              title: "title",
              details: ConstantStrings.loremText,
              downloadUrl: "downloadUrl"),
        ),
      ),
    );
  }
}
