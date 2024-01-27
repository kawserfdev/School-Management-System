import 'package:aladin/modules/notification/view/exam_routin.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  static String routeName = "/notification";

  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<NotificationItem> notifications = [
    NotificationItem(
      title: 'Exam Routine',
      text: 'Quis aliquet integer massa est.',
      unread: true,
    ),
    NotificationItem(
      title: 'Salary',
      text: 'Quis aliquet integer massa est.',
      unread: true,
    ),
    NotificationItem(
      title: 'New Message',
      text: 'Quis aliquet integer massa est.',
      unread: false,
    ),
    NotificationItem(
      title: 'Reminder',
      text: 'Quis aliquet integer massa est.',
      unread: false,
    ),
    NotificationItem(
      title: 'New Message',
      text: 'Quis aliquet integer massa est.',
      unread: false,
    ),
    NotificationItem(
      title: 'Reminder',
      text: 'Quis aliquet integer massa est.',
      unread: false,
    ),
    NotificationItem(
      title: 'Salary',
      text: 'Quis aliquet integer massa est.',
      unread: false,
    ),
    NotificationItem(
      title: 'New Message',
      text: 'Quis aliquet integer massa est.',
      unread: true,
    ),
    // Add more notifications here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: globalAppbar(context, 'Notification', () {
        Get.back();
      }),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExamRoutinePage(),
                    )),
                child: ListTile(
                  // splashColor: purpleShade,
                  trailing: notifications[index].unread
                      ? const Icon(Icons.circle, color: Color(0xFFFFAA50))
                      : const Icon(Icons.circle, color: Colors.white),
                  title: Text(
                    notifications[index].title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    notifications[index].text,
                    style: TextStyle(
                      color: const Color(0xff302F33),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String text;
  final bool unread;

  NotificationItem({
    required this.title,
    required this.text,
    required this.unread,
  });
}
