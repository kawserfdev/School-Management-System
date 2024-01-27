import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Student_Profile extends StatefulWidget{
  @override
  State<Student_Profile> createState() => _Student_ProfileState();
}

class _Student_ProfileState extends State<Student_Profile> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Color(0xff0E3E67),
            centerTitle: true,
            title: Text('Student Profile',style: TextStyle(fontSize: 20.sp,color: Colors.white),),
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
                Container(
                  width: 1.sw,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/coordinate/images/student_profile_avatar.png'),
                        radius: 50.sp,
                      ),
                      SizedBox(height: 0.01.sh,),
                      Text('Sara Khan',style: TextStyle(fontSize: 20.sp,color: Colors.black54,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 0.02.sh,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Class',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    Text('Roll Number',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                  ],
                ),
                SizedBox(height: 0.01.sh,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                    height: 0.05.sh,
                    width: 0.40.sw,
                    child: TextField(
                      style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                    hintText: 'VI',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                 ),
                 ),
                  ),
                      Container(
                        height: 0.05.sh,
                        width: 0.40.sw,
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '12',
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
                    Text("Father's Name",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          hintText: 'Lorem Ipsum',
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
                    Text("Father's Numbber",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '73538839',
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
                    Text("Mother's Name",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          hintText: 'Lorem Ipsum',
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
                    Text("Mother's Number",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '983848923',
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
                    Text("Address",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 0.015.sh,),
                    Container(
                      height: 0.05.sh,
                      width: 1.sw,
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          hintText: '28,hatirpul Bazar,Dhaka',
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}