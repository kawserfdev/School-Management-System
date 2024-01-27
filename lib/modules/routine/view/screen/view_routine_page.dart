import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/modules/routine/widget/drop_down_item.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/global-appbar2.dart';

class ViewRoutinePage extends StatelessWidget {
  const ViewRoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
          title: 'View Routine',
          tap: () {
            Get.back();
          }),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Column(
              children: [
                DropDownItem(name: 'Class', item: '7-A'),
                DropDownItem(name: 'Shift', item: 'Day'),
              ],
            ),
          ),

          //tiffin time
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SuccessFull(successFullMessage: 'Successfullt Download'),
                )),
          ),
        ],
      ),
    );
  }
}
