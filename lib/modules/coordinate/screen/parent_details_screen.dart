import 'package:aladin/modules/coordinate/Screen/student_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Parent_Details extends StatelessWidget
{  Parent_Details({super.key});
  var Items = [
    {"Roll": "01", "Profile": "Mustak Al Mehedi"},
    {"Roll": "02", "Profile": "Khaled Hasan"},
    {"Roll": "03", "Profile": "Karim Mia"},
    {"Roll": "04", "Profile": "Ratul Khan"},
    {"Roll": "05", "Profile": "Farabi Hasan"},
    {"Roll": "06", "Profile": "Al Mahmud"},
    {"Roll": "07", "Profile": "Abudr Rahman"},
    {"Roll": "08", "Profile": "Bijoy"},
    {"Roll": "09", "Profile": "Mridul Kanti Paul"},
    {"Roll": "10", "Profile": "Riad Hasan"},
    {"Roll": "11", "Profile": "Tushar Khan"},
    {"Roll": "12", "Profile": "Lutfar Rahman"},
    {"Roll": "13", "Profile": "Nafiz Ahmed"},
    {"Roll": "14", "Profile": "Abdullah Al Faisu"},
    {"Roll": "15", "Profile": "Jubayer Hossain"},

  ];

  @override
  Widget build(BuildContext context) {
    var media_query = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Color(0xff0E3E67),
          centerTitle: true,
          title: Text('Parent Details',style: TextStyle(fontSize: 20.sp,color: Colors.white),),
          leading: Image(
            image: AssetImage('assets/coordinate/images/back_arrow_image.png'),
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Roll',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xff000000)),),
                  Text('Student Profile',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xff000000)),)
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
                        margin: EdgeInsets.all(10),
                        height: 0.05.sh,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, top: 8, bottom: 8),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(Items[index]['Roll']!,
                                      style: TextStyle(fontSize: 16.sp, color: Colors.black87),)
                                ),

                                InkWell(
                                  child: Container(
                                      width: 0.5.sw,
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 8, bottom: 8),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(Items[index]['Profile']!,
                                        style: TextStyle(fontSize: 16.sp, color: Colors.black87),)
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                      return Student_Profile();
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
    );
  }
}
