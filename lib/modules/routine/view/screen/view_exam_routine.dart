import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/global-appbar2.dart';

class ViewExamRoutine extends StatelessWidget {
  const ViewExamRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
          title: 'View Exam Routine',
          tap: () {
            Get.back();
          }),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessFull(
                    successFullMessage: 'Successfully Download',
                  ),
                )),
            child: Image.asset(
              'assets/exam-routine.png',
            ),
          )
        ],
      ),
    );
  }
}
