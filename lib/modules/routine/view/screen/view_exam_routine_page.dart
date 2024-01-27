import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/modules/routine/widget/routine-table.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ViewExamRoutinePage extends StatelessWidget {
  const ViewExamRoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
          title: 'View Exam Routine',
          tap: () {
            Get.back();
          }),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: MyTablePage(
          column_1: 'Date',
          column_2: 'Subject',
          column_3: 'Time',
        ),
      ),
    );
  }
}
