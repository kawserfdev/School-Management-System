import 'package:aladin/modules/routine/view/screen/successfull_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widget/global-appbar2.dart';

class ViewClassRoutine extends StatelessWidget {
  const ViewClassRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
          title: 'View Class Routine',
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
              'assets/class-routine-stu.png',
            ),
          )
        ],
      ),
    );
  }
}
