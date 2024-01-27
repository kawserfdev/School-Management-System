import 'package:aladin/modules/curriculum/screen/class_work_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ClassWorkSubmitSuccessStudent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: Container(
              width: 327.w,
              decoration: BoxDecoration(

                  image: DecorationImage(
                      image: AssetImage('assets/curriculum/images/success_bg.png')
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Image(
                        image: AssetImage('assets/curriculum/images/cross_icon.png')
                    ),
                    onTap: (){
                      Get.back();
                    },
                  ),
                  Container(
                    width: 327.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //height: 0.40.sh,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                //  height: 0.35.sh,
                                // width: 0.7.sw,
                                //alignment: Alignment.center,
                                  child: Image(
                                    height: 196.h,
                                    width: 196.w,
                                    image: AssetImage('assets/curriculum/images/success_icon.png'),

                                  )
                              ),
                              SizedBox(height: 5.h,),
                              Text('Successfully Submitted',style: TextStyle(fontSize: 20.sp,fontFamily:'Arial Rounded MT Bold',fontWeight:FontWeight.bold,color: Color(0xff000000)),)
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 254.h),
                          child: SizedBox(
                            height: 40.h,
                            width: 204.w,
                            child: ElevatedButton(onPressed: (){
                             Get.to(ClassWorkStudent());
                            },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff0E3D67),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.r)
                                  ),
                                  //side: BorderSide(color: Colors.blueAccent, width: 1,),
                                ),
                                child: Text('Back To Home Page',style: TextStyle(fontSize: 16.sp,fontWeight:FontWeight.bold,color: Colors.white),)
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}