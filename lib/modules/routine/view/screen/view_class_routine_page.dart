import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/modules/routine/widget/class_routine_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/global-appbar2.dart';

class ViewClassRoutinePage extends StatelessWidget {
  const ViewClassRoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'View Class Routine',
          tap: () {
            Get.back();
          }),
      body: ClassTablePage(
        column_1: 'Time',
        column_2: 'Subject',
        column_3: 'Class',
        column_4: 'Room',
      ),
    );
  }
}
