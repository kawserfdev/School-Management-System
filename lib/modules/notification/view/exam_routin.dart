import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/modules/routine/widget/routine-table.dart';
import 'package:aladin/widget/global-appbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExamRoutinePage extends StatelessWidget {
  const ExamRoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: globalAppbar(context, 'View Routine', () {
        Get.back();
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Text(
              "Quis aliquet integer massa est. Lorem ipsum dolor sit amet consectetur. Dignissim duis massa fames tristique. Euismod id faucibus arcu rutrum amet. ",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                height: 1.4,
              ),
            ),
            addH(20.h),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessFull(
                    successFullMessage: 'Successfully Download',
                    // buttonTitle: 'Add Another Routine',
                  ),
                ),
              ),
              child: MyTablePage(
                column_1: 'Date',
                column_2: 'Subject',
                column_3: 'Time',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
