import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Preview extends StatefulWidget {
  @override
  State<Preview> createState() => _Preview_State();
}

class _Preview_State extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: globalAppbar(context, "Preview", () {
          Get.back();
        }),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(0.05.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Start Date',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      'End Date',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 0.05.sh,
                        width: 0.30.sw,
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            hintText: '12/06/2023',
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 0.05.sh,
                        width: 0.30.sw,
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '12/06/2023',
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.025.sh,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Days",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 0.015.sh,
                    ),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          hintText: '07',
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Text(
                  'Leave Type',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  height: 0.05.sh,
                  width: 1.sw,
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: 'Leave Type',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reason",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 0.015.sh,
                    ),
                    SizedBox(
                        // height: 0.0.sh,
                        width: 1.sw,
                        child: TextField(
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            labelText:
                                'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim ',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 5, // <-- SEE HERE
                          minLines: 1, // <-- SEE HERE
                        )),
                  ],
                ),
                SizedBox(
                  height: 0.04.sh,
                ),
                Text(
                  'Attached File',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText:
                          'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim ',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                addH(5.h),
                Container(
                  color: Color(0xFFF2F9FF),
                  child: ListTile(
                    title: Text('Application for leave'),
                    subtitle: Text('1 page . 12kb . PDF'),
                    leading: Image(
                      height: 31.h,
                      width: 39.w,
                      image: const AssetImage(
                          'assets/curriculum/images/pdf_vector2.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 158.w,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            side: BorderSide(
                              color: buttonColor,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT Bold',
                              fontSize: 14.sp,
                              color: Colors.black54,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 48.h,
                      width: 158.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => SuccessFull(
                              successFullMessage: "Successfully Applied"));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: buttonColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          //side: BorderSide(color: Colors.blueAccent, width: 1,),
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontFamily: 'Arial Rounded MT Bold',
                              fontSize: 14.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
