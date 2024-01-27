import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'application_screen.dart';


class Applications extends StatelessWidget{

  var Items = [
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},
    {"Date": "12/06/2023", "Roll": "01"},

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Color(0xff0E3E67),
            centerTitle: true,
            title: Text('Applications',style: TextStyle(fontSize: 20.sp,color: Colors.white),),
            leading: Image(
              image: AssetImage('assets/coordinate/images/back_arrow_image.png'),
            )
        ),
        body: Padding(
          padding:  EdgeInsets.only(left:0.04.sw,right:0.04.sw,top:0.06.sh,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xff000000)),),
                  Text('Roll',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xff000000)),),
                  Text('Applications',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xff000000)),),
                ],
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: Items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: 0.02.sh),
                          height:  0.06.sh,
                          child: Column(
                            children: [
                              Row(
                               // mainAxisAlignment: MainAxisAlignment,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(Items[index]['Date']!,
                                        style: TextStyle(fontSize: 15.sp, color: Colors.black87),)
                                  ),
                                  SizedBox(width: 0.08.sw,),
                                  Container(
                                      width: 0.15.sw,
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 8, bottom: 8),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(Items[index]['Roll']!,
                                        style: TextStyle(fontSize: 15.sp, color: Colors.black87),)
                                  ),
                                  SizedBox(width: 0.28.sw,),
                                  InkWell(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Icon(Icons.remove_red_eye_outlined,color: Colors.black38,),
                                          Text('View',style: TextStyle(fontSize: 15.sp,color: Colors.black54),),
                                        ],
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                        return Application();
                                      }));
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}