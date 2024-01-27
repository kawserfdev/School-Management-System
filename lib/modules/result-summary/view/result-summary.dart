import 'package:aladin/modules/attendance/view/attendance.dart';
import 'package:aladin/modules/view-attendance/view/view-attendance.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import '../../../constants/color.dart';
import '../../../constants/string.dart';
import '../../../helper/hard-data-source.dart';
import '../../../helper/helper.dart';
import '../../../widget/custom-text.dart';
import '../../all-term/model/term-item.dart';

class ResultSummaryPage extends StatelessWidget {
  static String resultSummaryRoute = "/result-summary";
  const ResultSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<TermModel> resultTermList = GlobalDataSource.getResuleSheet();
    List<int> levelList = [100, 80, 60, 40, 20, 0];

    List<List<int>> percentageMultiple = [
      [100, 70, 50],
      [70, 80, 50],
      [90, 70, 50],
      [50, 70, 50],
      [60, 70, 50],
      [90, 80, 50]
    ];
    List<Color> colors = [
      ConstantColors.puple.withOpacity(0.4),
      ConstantColors.red.withOpacity(0.4),
      ConstantColors.blueLight.withOpacity(0.4),
      ConstantColors.amber.withOpacity(0.4),
      ConstantColors.green.withOpacity(0.4)
    ];

    return Scaffold(
      appBar: globalAppbar(context, "Summary", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60.h),
        children: [
          ResultGrap(
              levelList: levelList,
              resultTermList: resultTermList,
              colors: colors,
              percentage: percentageMultiple),
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
  });

  final List<int> levelList;
  final List<TermModel> resultTermList;
  final List<Color> colors;
  final List<List<int>> percentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 330.h,
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
              addW(10.w),
              Row(
                children: List.generate(
                  resultTermList.length,
                  (indexx) => GrapLine(
                      indexx: indexx,
                      colors: colors,
                      percentage: percentage,
                      resultTermList: resultTermList),
                ),
              )
            ],
          ),
        ));
  }
}

class GrapLine extends StatelessWidget {
  const GrapLine({
    super.key,
    required this.colors,
    required this.percentage,
    required this.resultTermList,
    required this.indexx,
  });

  final List<Color> colors;
  final List<List<int>> percentage;
  final List<TermModel> resultTermList;
  final int indexx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w),
      child: SizedBox(
        height: 330.h,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: FAProgressBar(
                            progressColor: colors[indexx],
                            size: 12.w,
                            direction: Axis.vertical,
                            verticalDirection: VerticalDirection.up,
                            currentValue: percentage[indexx][index].toDouble(),
                          ),
                        )),
              ),
            ),
            addH(20.h),
            TextW(
              title: resultTermList[indexx].subject,
              fontFamily: ConstantStrings.kAppInterRegular,
            )
          ],
        ),
      ),
    );
  }
}
