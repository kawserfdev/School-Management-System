// ignore_for_file: unused_local_variable

import 'package:aladin/helper/hard-data-source.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/all-term/model/term-item.dart';
import 'package:aladin/modules/all-term/view/term.dart';
import 'package:aladin/modules/result-summary/view/result-summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../constants/color.dart';
import '../../../widget/global-appbar.dart';
import '../../fees/view/fees.dart';
import '../../fees/widget/help-item.dart';

class ReportCardPage extends StatelessWidget {
  const ReportCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<TermModel> resultList = GlobalDataSource.getResuleSheet();
    return Scaffold(
      appBar: globalAppbar(context, "Report Card", () {
        Get.back();
      }),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          const TopImage(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelpItem(
                color: const Color(0xffFFF8F3),
                tap: () {
                  Get.toNamed(ResultTermPage.resltTermRout,
                      arguments: "1s Term");
                },
                title: "1st Term",
                image: "assets/icons/First Term.png",
              ),
              addW(20.w),
              HelpItem(
                color: const Color(0xffFFFDF1),
                tap: () {
                  Get.toNamed(ResultTermPage.resltTermRout,
                      arguments: "2nd Term");
                },
                title: "2nd Term",
                image: "assets/icons/Second Term.png",
              )
            ],
          ),
          addH(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelpItem(
                color: ConstantColors.softBlue,
                tap: () {
                  Get.toNamed(ResultTermPage.resltTermRout,
                      arguments: "3rd Term");
                },
                title: "Final Term",
                image: "assets/icons/Final Term.png",
              ),
              addW(20.w),
              HelpItem(
                color: const Color(0xffFFFCEE),
                tap: () {
                  Get.toNamed(ResultSummaryPage.resultSummaryRoute);
                },
                title: "Summary",
                image: "assets/icons/Summary.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
