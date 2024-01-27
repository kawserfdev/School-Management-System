import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/hard-data-source.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/all-term/model/term-item.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import '../widget/table-item.dart';

class ResultTermPage extends StatelessWidget {
  static String resltTermRout = '/result-term';
  const ResultTermPage({super.key});

  @override
  Widget build(BuildContext context) {
    String type = Get.arguments;

    List<TermModel> resultTermList = GlobalDataSource.getResuleSheet();
    List<int> levelList = [100, 80, 60, 40, 20, 0];
    List<int> percentage = [100, 50, 90, 80, 60, 100];
    List<Color> colors = [
      ConstantColors.puple.withOpacity(0.4),
      ConstantColors.red.withOpacity(0.4),
      ConstantColors.blueLight.withOpacity(0.4),
      ConstantColors.amber.withOpacity(0.4),
      ConstantColors.green.withOpacity(0.4)
    ];

    return Scaffold(
      appBar: globalAppbar(context, type, () {
        Get.back();
      }),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        children: [
          ResultSheet(resultTermList: resultTermList),
          addH(20.h),
          ResultGrap(
              levelList: levelList,
              resultTermList: resultTermList,
              colors: colors,
              percentage: percentage),
        ],
      ),
    );
  }
}

class ResultGrap extends StatelessWidget {
  const ResultGrap({
    super.key,
    required this.levelList,
    required this.resultTermList,
    required this.colors,
    required this.percentage,
    this.isForMonth,
  });

  final List<int> levelList;
  final List<TermModel> resultTermList;
  final List<Color> colors;
  final List<int> percentage;
  final bool? isForMonth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280.h,
        width: 20,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          levelList.length,
                          (index) => TextW(
                                title: levelList[index].toString(),
                                fontFamily: ConstantStrings.kAppInterRegular,
                              )),
                    ),
                  ),
                  addH(30.h)
                ],
              ),
              addW(10.h),
              Row(
                children: List.generate(
                  resultTermList.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                        right: isForMonth == true ? 14.w : 25.w),
                    child: SizedBox(
                      height: 280.h,
                      child: Column(
                        children: [
                          Expanded(
                            child: FAProgressBar(
                              progressColor: colors[index],
                              size: isForMonth == true ? 13.w : 26.w,
                              direction: Axis.vertical,
                              verticalDirection: VerticalDirection.up,
                              currentValue: percentage[index].toDouble(),
                            ),
                          ),
                          addH(20.h),
                          TextW(
                            title: resultTermList[index].subject,
                            fontFamily: ConstantStrings.kAppInterRegular,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class ResultSheet extends StatelessWidget {
  const ResultSheet({
    super.key,
    required this.resultTermList,
  });

  final List<TermModel> resultTermList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.w)),
      child: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ResultTable(
              items: resultTermList,
            ),
            addH(5.h),
            IconButton(
                splashRadius: 24,
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/downloadicon.png",
                  color: buttonColor,
                ))
          ],
        ),
      ),
    );
  }
}

class ResultTable extends StatelessWidget {
  const ResultTable({
    super.key,
    this.isHeader,
    required this.items,
  });
  final List<TermModel> items;
  final bool? isHeader;

  @override
  Widget build(BuildContext context) {
    List<String> subjectList = [];
    List<String> markList = [];
    List<String> gradeList = [];
    void createOneByOneItemList() {
      for (var i = 0; i < items.length; i++) {
        subjectList.add(items[i].subject);
        gradeList.add(items[i].grade);
        markList.add(items[i].mark);
      }
    }

    createOneByOneItemList();

    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColumnItem(
            items: subjectList,
            header: "Subject",
          ),
          ColumnItem(
            items: markList,
            header: "Marks",
          ),
          ColumnItem(
            items: gradeList,
            header: "Grade",
          ),
        ],
      ),
    );
  }
}
