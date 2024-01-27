import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ClassTablePage extends StatelessWidget {
  ClassTablePage(
      {super.key, this.column_1, this.column_2, this.column_3, this.column_4});

  final String? column_1;
  final String? column_2;
  final String? column_3;
  final String? column_4;

  // Sample data for the table
  final List<Map<String, String>> tableData = [
    {'class': '7-a', 'subject': 'Bangla', 'time': '10:00', 'room': '101'},
    {'class': '7-a', 'subject': 'Math', 'time': '12:00', 'room': '101'},
    {'class': '7-a', 'subject': 'Chemistry', 'time': '1:00', 'room': '101'},
    {'class': '7-a', 'subject': 'Physics', 'time': '10:00', 'room': '101'},
    {'class': '7-a', 'subject': 'English', 'time': '10:00', 'room': '101'},
    {'class': '7-a', 'subject': 'History', 'time': '12:00', 'room': '101'},
    {'class': '7-a', 'subject': 'Biology', 'time': '1:00', 'room': '101'},
    {'class': '7-a', 'subject': 'Bangla', 'time': '2:30', 'room': '101'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500.h,
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(
                width: 2,
                color: const Color(0xffE8E9E2),
              )),
          child: InteractiveViewer(
            child: Column(
              children: [
                DataTable(
                  columnSpacing: 40.w,
                  columns: <DataColumn>[
                    DataColumn(
                        label: Text(
                      column_1!,
                      style: TextStyle(
                        color: const Color(0xff4F4F4F),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    DataColumn(
                        label: Text(
                      column_2!,
                      style: TextStyle(
                        color: const Color(0xff4F4F4F),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    DataColumn(
                      label: Text(
                        column_3!,
                        style: TextStyle(
                          color: const Color(0xff4F4F4F),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        column_4!,
                        style: TextStyle(
                          color: const Color(0xff4F4F4F),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                    tableData.length,
                    (index) => DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            tableData[index]['time']!,
                            style: TextStyle(
                              color: const Color(0xff4F4F4F),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DataCell(Text(
                          tableData[index]['subject']!,
                          style: TextStyle(
                            color: const Color(0xff4F4F4F),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                        DataCell(
                          Text(
                            tableData[index]['class']!,
                            style: TextStyle(
                              color: const Color(0xff4F4F4F),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            tableData[index]['room']!,
                            style: TextStyle(
                              color: const Color(0xff4F4F4F),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 1.0,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xffE8E9E2),
                  ),
                ),
                addH(20.h),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 40.h,
              width: 30.w,
              child: Image.asset('assets/routine/pdf-vector.png'),
            ),
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
              child: SizedBox(
                height: 40.h,
                width: 30.w,
                child: Image.asset(
                  'assets/routine/download.png',
                  color: buttonColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
