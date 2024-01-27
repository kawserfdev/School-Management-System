import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/attendance/view/attendance.dart';
import 'package:aladin/modules/calendar/view/calender.dart';
import 'package:aladin/modules/curriculum/screen/curriculum_student.dart';
import 'package:aladin/modules/fees/view/fees.dart';
import 'package:aladin/modules/help-center/view/help-center.dart';
import 'package:aladin/modules/id_card/view/screen/id_card.dart';
import 'package:aladin/modules/leave/screen/apply_for_leave_screen.dart';
import 'package:aladin/modules/myteacher/screen/myteacher.dart';
import 'package:aladin/modules/notification/view/notification_screen.dart';
import 'package:aladin/modules/online_class/view/screen/onlines_creen/online_class_screen.dart';
import 'package:aladin/modules/profile/view/screen/profile_page.dart';
import 'package:aladin/modules/report-card/view/report-card.dart';
import 'package:aladin/modules/routine/view/screen/routine_page.dart';
import 'package:aladin/modules/exam/view/exam.dart';
import 'package:aladin/modules/testimonial/testimonial_page.dart';
import 'package:aladin/modules/transport/view/screen/trasnport/transport.dart';
import 'package:aladin/modules/why-this-app/view/screen/why_this_app.dart';
import 'package:aladin/widget/home_generate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Map<String, dynamic>> homeMenu = [
    {
      'title': 'Curriculum',
      'imgUrl': 'assets/images/home/applicant.png',
      'page': CurriculumStudent(),
      'color': '0xffDDFDE5',
    },
    {
      'title': 'Routine',
      'imgUrl': "assets/images/home/Routine.png",
      'page': const RoutinePage(),
      'color': '0xffFFF4CB',
    },
    {
      'title': 'Online Class',
      'imgUrl': "assets/images/home/Online Class.png",
      'page': const OnlineClassScreen(),
      'color': '0xffEDCFFF',
    },
    {
      'title': 'Exam',
      'imgUrl': "assets/images/home/exam.png",
      'page': const ExamPage(),
      'color': '0xffD7ECFF',
    },
    {
      'title': 'Report Card',
      'imgUrl': "assets/images/home/Result.png",
      'page': const ReportCardPage(),
      'color': '0xffD4F7FF',
    },
    {
      'title': 'Attendance',
      'imgUrl': "assets/images/home/Attendance.png",
      'page': const AttendancePage(),
      'color': '0xffE8E8E8',
    },
    {
      'title': 'My Teacher',
      'imgUrl': "assets/images/home/Coordinate.png",
      'page': const MyTeacherScreen(),
      'color': '0xffE5FFD6',
    },
    {
      'title': 'Calender',
      'imgUrl': "assets/images/home/Calander.png",
      'page': const CalendarPage(),
      'color': '0xffE0E7FF',
    },
    {
      'title': 'Leave',
      'imgUrl': "assets/images/home/leave.png",
      'page': const ApplyForLeave(),
      'color': '0xffFEFFD4',
    },
    {
      'title': 'Fees',
      'imgUrl': "assets/images/home/Salary.png",
      'page': const FeesPage(),
      'color': '0xffFCEFE3',
    },
    {
      'title': 'Transport',
      'imgUrl': "assets/images/home/School Bus.png",
      'page': const TransportScreen(),
      'color': '0xffFCEFE3',
    },
    {
      'title': 'Student ID Card',
      'imgUrl': "assets/images/home/student-card.png",
      'page': const IdCard(),
      'color': '0xffFCEFE3',
    },
    {
      'title': 'Testimonial',
      'imgUrl': "assets/images/home/Testimonial.png",
      'page': const TestimonialPage(),
      'color': '0xffFCEFE3',
    },
    {
      'title': 'Help Center',
      'imgUrl': "assets/images/home/Help Center.png",
      'page': const HelpCenterPage(),
      'color': '0xffFFF9EE',
    },
    {
      'title': 'Why This App',
      'imgUrl': "assets/images/home/faq.png",
      'page': const WhyThisAppScreen(),
      'color': '0xffDADEFF',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          addH(10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            )),
                        child: Image.network(
                          'https://picsum.photos/seed/picsum/200/300',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jackson",
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("ID No: 152451"),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {
                      Get.to(() => NotificationScreen());
                    },
                    child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            border: Border.all(color: Color(0xFFE8E9E2))),
                        child: Icon(Icons.notifications_none_outlined))),
              ],
            ),
          ),
          addH(10.h),
          SizedBox(
            height: 650.h,
            child: HomeMenuGenerator(
              menu: homeMenu,
            ),
          ),
          addH(20.h),
        ],
      ),
    );
  }
}
