import 'package:aladin/modules/coordinate/Screen/parent_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'applications_screen.dart';
import 'attendence_summary_screen.dart';

class CoordinateScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Color(0xff0E3E67),
          centerTitle: true,
          title: Text('Coordinate',style: TextStyle(fontSize: 20.sp,color: Colors.white),),
          leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Image(
              image: AssetImage('assets/coordinate/images/back_arrow_image.png'),
            ),
          )
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0.02.sh),
        child: Container(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 0.25.sh,
                width: 1.sw,
                fit: BoxFit.fill,
                image: AssetImage('assets/coordinate/images/coordinate_home.png') ,
              ),
              SizedBox(height: 0.03.sh,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('Coordinated Class',style: TextStyle(fontSize: 16.sp,color: Colors.black87),)),
                  Container(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),

                      ),
                      child: Text('Seven',style: TextStyle(fontSize: 16.sp,color: Colors.black87))),
                ],
              ),
              SizedBox(height: 0.03.sh,),
              Padding(
                padding:  EdgeInsets.only(left: 25.sp,right: 25.sp,bottom: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                          height: 0.16.sh,
                          width: 0.40.sw,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffE3F6FF),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 0.07.sh,
                                width: 0.12.sw,
                                  image: AssetImage('assets/coordinate/images/Summary.png'),
                              ),
                              SizedBox(height: 0.02.sh,),
                              Text('Attendence Summary',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Color(0xff17161B)),)
                            ],
                          )
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                          return AttendenceSummary();
                        }));
                      },
                    ),
                    InkWell(
                      child: Container(
                          height: 0.16.sh,
                          width: 0.40.sw,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFFEAEB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 0.07.sh,
                                width: 0.12.sw,

                                  image: AssetImage('assets/coordinate/images/apply.png'),
                              ),
                              SizedBox(height: 0.02.sh,),
                              Text('Applications',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Color(0xff17161B)),)
                            ],
                          )
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                          return Applications();
                        }));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 25.sp,right: 25.sp,bottom: 5.sp),
                child: InkWell(
                  child: Container(
                      height: 0.16.sh,
                      width: 0.40.sw,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xfffFFF7E5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: 0.07.sh,
                            width: 0.12.sw,
                            image: AssetImage('assets/coordinate/images/parent_details.png'),
                          ),
                          SizedBox(height: 0.02.sh,),
                          Text('Parent details',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Color(0xff17161B)),)
                        ],
                      )
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return Parent_Details();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}