import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  Application extends StatefulWidget{
  @override
  State<Application> createState() => _Application_State();
}

class _Application_State extends State<Application> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Color(0xff0E3E67),
            centerTitle: true,
            title: Text('Application',style: TextStyle(fontSize: 20.sp,color: Colors.white),),
            leading: Image(
              image: AssetImage('assets/coordinate/images/back_arrow_image.png'),
            )
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.all(0.05.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Roll',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                SizedBox(height: 0.02.sh,),
                Container(
                  height: 0.05.sh,
                  width: 1.sw,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: '12',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.02.sh,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Start Date',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    Text('End Date',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                  ],
                ),
                SizedBox(height: 0.01.sh,),
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
                SizedBox(height: 0.025.sh,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Days",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
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
                SizedBox(height: 0.02.sh,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Leave Type",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          hintText: 'Sick Leave',
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.02.sh,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reason",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    SizedBox(
                     // height: 0.0.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          labelText: 'Lorem Ipsum',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 5, // <-- SEE HERE
                        minLines: 1, // <-- SEE HERE
                      )
                    ),
                  ],
                ),
                SizedBox(height: 0.02.sh,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    side: BorderSide(
                                      color: Colors.grey,
                                      width: 0.2.w,
                                    ),
                                  ),
                                  color: Colors.white,
                                  elevation: 1,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 20.h, left: 20.w, right: 20.w),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in.'
                                              'Elementum aliquam velit natoque pharetra scelerisque. '
                                              'Viverra mattis fermentum leo turpis tellus. Proin malesuada sit tellus enim turpis lorem praesent tincidunt.'
                                              'Aliquet condimentum tempus hac sem. Ipsum congue orci bibendum vulputate.'
                                              'Velit varius arcu tincidunt venenatis quisque. Nam nunc odio ultrices eget quam morbi fermentum.'
                                              'Quis aliquet integer massa est. '
                                              'Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. '
                                              'Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur. '
                                              'Nisl enim nisl enim at vehicula in. Elementum aliquam velit natoque pharetra scelerisque. '
                                              'Viverra mattis fermentum leo turpis tellus. '
                                              'Proin malesuada sit tellus enim turpis lorem praesent tincidunt. '
                                              'Aliquet condimentum tempus hac sem. Ipsum congue orci bibendum vulputate. '
                                              'Velit varius arcu tincidunt venenatis quisque. Nam nunc odio ultrices eget quam morbi fermentum. '
                                              'Quis aliquet integer massa est. Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. '
                                              'Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur. Nisl enim nisl enim at vehicula in.'
                                              'Elementum aliquam velit natoque pharetra scelerisque. Viverra mattis fermentum leo turpis tellus. '
                                              'Proin malesuada sit tellus enim turpis lorem. Dui nibh ut aliquet a arcu faucibus eget nunc rutrum. '
                                              'Ante in id urna cursus ante diam aliquet est sit.Lorem ipsum dolor sit amet consectetur.'
                                              'Nisl enim nisl enim at vehicula in.',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(fontSize: 12.sp,color: Colors.grey)
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 25.h, left: 20.w, right: 20.w),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset('assets/coordinate/images/pdf_vector.png'),
                                           // Image.asset('assets/download.png'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.02.sh,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 0.05.sh,
                      width: 0.4.sw,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            side: BorderSide(color: Color(0xff0E3E67), width: 1,),
                          ),
                          child: Text('Decline',style: TextStyle(fontSize: 14.sp,color: Colors.black54),)),
                    ),
                    SizedBox(
                      height: 0.05.sh,
                      width: 0.4.sw,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff0E3E67),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            //side: BorderSide(color: Colors.blueAccent, width: 1,),
                          ),
                          child: Text('Forward',style: TextStyle(fontSize: 14.sp,color: Colors.white),)),
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