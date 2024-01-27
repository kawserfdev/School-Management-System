import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/routine/styles/colors.dart';
import 'package:aladin/modules/routine/view/screen/view_class_routine_page.dart';
import 'package:aladin/modules/routine/view/screen/view_exam_routine_page.dart';

import 'package:aladin/modules/routine/widget/card.dart';
import 'package:aladin/widget/global-appbar2.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RoutinePage extends StatelessWidget {
  const RoutinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> routineMenu = [
      {
        'title': 'View Exam Routine',
        'imageUrl': 'assets/routine/exam_routine.png',
        'color': primaryColor,
        'page': const ViewExamRoutinePage()
      },
      {
        'title': 'View Class Routine',
        'imageUrl': 'assets/routine/class-routine.png',
        'color': secondaryColor,
        'page': const ViewClassRoutinePage()
      },
    ];

    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Routine',
          tap: () {
            Get.back();
          }),
      body: Column(
        children: [
          // const CustomAppBar(
          //   height: 120,
          //   title: 'Routine',
          // ),

          SizedBox(
            height: 20.h,
          ),

          //schedule image
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 208.h,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/routine/routine-bg.png',
                ),
              ),
            ),
          ),

          addH(25.h),
          //routine card
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                dragStartBehavior: DragStartBehavior.start,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                ),
                itemCount: 2,
                itemBuilder: (context, item) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => routineMenu.elementAt(item)['page'],
                    ),
                  ),
                  child: GridTile(
                    child: MyCard(
                      color: routineMenu.elementAt(item)['color'],
                      icon: Image.asset(
                          height: 50.h,
                          routineMenu.elementAt(item)['imageUrl'].toString()),
                      title: routineMenu.elementAt(item)['title'],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
