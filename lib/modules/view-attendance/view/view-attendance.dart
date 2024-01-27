import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/widget/custom-text.dart';
import 'package:aladin/widget/dropdown-border-round.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/color.dart';
import '../../../helper/hard-data-source.dart';
import '../../all-term/model/term-item.dart';
import '../../all-term/view/term.dart';

class ViewAttendancePage extends StatefulWidget {
  static String viewAttendanceRoute = "/view-attendance";
  const ViewAttendancePage({super.key});

  @override
  State<ViewAttendancePage> createState() => _ViewAttendancePageState();
}

class _ViewAttendancePageState extends State<ViewAttendancePage> {
  @override
  Widget build(BuildContext context) {
    String _selectedMonth = "Jan";
    String _selectedYear = "2023";
    List<TermModel> resultTermList = GlobalDataSource.getDaySheet();
    List<TermModel> resultmontList = GlobalDataSource.getMonthSheet();
    List<dynamic> attendance = GlobalDataSource.getDayWithAttendencSheet();
    List<int> levelList = [100, 80, 60, 40, 20, 0];
    List<int> percentage = [100, 50, 90, 80, 60, 100, 40, 50, 70, 20, 10, 46];
    List<Color> colors = [
      ConstantColors.puple.withOpacity(0.4),
      ConstantColors.red.withOpacity(0.4),
      ConstantColors.blueLight.withOpacity(0.4),
      ConstantColors.amber.withOpacity(0.4),
      ConstantColors.green.withOpacity(0.4),
      ConstantColors.puple.withOpacity(0.4),
      ConstantColors.red.withOpacity(0.4),
      ConstantColors.blueLight.withOpacity(0.4),
      ConstantColors.amber.withOpacity(0.4),
      ConstantColors.green.withOpacity(0.4),
      ConstantColors.amber.withOpacity(0.4),
      ConstantColors.green.withOpacity(0.4),
    ];

    return Scaffold(
      appBar: globalAppbar(context, "View Attendance", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.all(24.h),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextW(
                      title: "Month",
                      size: 20.sp,
                    ),
                    addH(10.h),
                    CustomDropdown(
                        items: const ["Jan", "Fav", "Mar", "Apr", "May"],
                        value: _selectedMonth,
                        onChanged: (val) {
                          setState(() {
                            _selectedMonth = val;
                          });
                        },
                        iconAsset: "assets/icons/down-arrow.png")
                  ],
                ),
              ),
              addW(20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextW(
                      title: "Year",
                      size: 20.sp,
                    ),
                    addH(10.h),
                    CustomDropdown(
                        items: const ["2023", "2022", "2021", "2020", "2019"],
                        value: _selectedYear,
                        onChanged: (val) {
                          setState(() {
                            _selectedYear = val;
                          });
                          print(_selectedYear);
                        },
                        iconAsset: "assets/icons/down-arrow.png")
                  ],
                ),
              )
            ],
          ),
          addH(35.h),
          AttendenceSegment(
              resultTermList: resultTermList, attendance: attendance),
          addH(20.h),
          const Status(),
          addH(38.h),
          Align(
            alignment: Alignment.topLeft,
            child: TextW(
              title: "Attendance Percantage",
              size: 19.sp,
            ),
          ),
          addH(30.h),
          ResultGrap(
              isForMonth: true,
              levelList: levelList,
              resultTermList: resultmontList,
              colors: colors,
              percentage: percentage),
        ],
      ),
    );
  }
}

class Status extends StatelessWidget {
  const Status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Item(
          title: "Absent",
          color: ConstantColors.red,
        ),
        Item(
          title: "Present",
          color: ConstantColors.green,
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.title,
    required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 9.w,
          backgroundColor: color,
        ),
        addW(8.w),
        TextW(
          title: title,
          size: 15.sp,
          fontFamily: 'Roboto',
          weight: FontWeight.w400,
        )
      ],
    );
  }
}

class AttendenceSegment extends StatelessWidget {
  const AttendenceSegment({
    super.key,
    required this.resultTermList,
    required this.attendance,
  });

  final List<TermModel> resultTermList;
  final List attendance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 230.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              resultTermList.length,
              (topindex) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 14.w, bottom: 20.h),
                          child: TextW(
                            title: attendance[topindex]['subject'],
                            size: 19.sp,
                            weight: FontWeight.bold,
                            fontFamily: ConstantStrings.kAppInterLight,
                          ),
                        ),
                        Column(
                          children: List.generate(
                              attendance[topindex]["list"].length,
                              (index) => Padding(
                                  padding: EdgeInsets.only(bottom: 20.h),
                                  child: TextW(
                                    title: attendance[topindex]["list"][index]
                                        ["no"],
                                    color: attendance[topindex]["list"][index]
                                            ["color"] ??
                                        ConstantColors.green,
                                    size: 16.sp,
                                    fontFamily: "Roboto",
                                    weight: FontWeight.w400,
                                  ))),
                        )
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
