import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AttendenceSummary extends StatefulWidget {
  AttendenceSummary({super.key});
  @override
  State<AttendenceSummary> createState() => _AttendenceSummaryState();
}

class _AttendenceSummaryState extends State<AttendenceSummary> {
  var Items = [
    {"Roll": "01", "Summary": "90"},
    {"Roll": "02", "Summary": "85"},
    {"Roll": "03", "Summary": "95"},
    {"Roll": "04", "Summary": "70"},
    {"Roll": "05", "Summary": "65"},
    {"Roll": "06", "Summary": "75"},
    {"Roll": "08", "Summary": "90"},
    {"Roll": "09", "Summary": "90"},
    {"Roll": "10", "Summary": "90"},
    {"Roll": "11", "Summary": "90"},
    {"Roll": "12", "Summary": "90"},
    {"Roll": "13", "Summary": "90"},
    {"Roll": "14", "Summary": "90"},
    {"Roll": "15", "Summary": "90"},
    {"Roll": "16", "Summary": "90"},
    {"Roll": "17", "Summary": "90"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Color(0xff0E3E67),
          centerTitle: true,
          title: Text(
            'Attendence Summary',
            style: TextStyle(fontSize: 20.sp, color: Colors.white),
          ),
          leading: Image(
            image: AssetImage('assets/coordinate/images/back_arrow_image.png'),
          )),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(0.05.sw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Roll',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),
                ),
                Text(
                  'Summary',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: Items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(0.01.sh),
                      //height: media_query.size.height*0.05,
                      //  child: Text(Items[index]['Roll']!,style: TextStyle(fontSize: 15,color: Colors.grey),),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(
                                      left: 0.04.sw,
                                      right: 0.04.sw,
                                      top: 0.02.sw,
                                      bottom: 0.02.sw),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    Items[index]['Roll']!,
                                    style: TextStyle(
                                        fontSize: 15.sp, color: Colors.grey),
                                  )),
                              Container(
                                child: LinearPercentIndicator(
                                    lineHeight: 0.02.sh,
                                    width: 0.4.sw,
                                    progressColor: Colors.green,
                                    backgroundColor: Colors.grey,
                                    percent: (double.parse(
                                            Items[index]['Summary']!) /
                                        100)),
                              ),
                              Container(
                                  padding: EdgeInsets.only(
                                      left: 0.04.sw,
                                      right: 0.04.sw,
                                      top: 0.02.sw,
                                      bottom: 0.02.sw),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    Items[index]['Summary']!,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
