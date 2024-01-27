import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationItem> notifications = [
    NotificationItem(
      title: 'New Message',
      text: 'You have a new message from John.',
      unread: true,
    ),
    NotificationItem(
      title: 'Reminder',
      text: 'Don\'t forget the meeting at 3 PM.',
      unread: false,
    ),
    // Add more notifications here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: notifications[index].unread
                ? Icon(Icons.circle, color: Colors.blue)
                : Icon(Icons.circle, color: Colors.grey),
            title: Text(notifications[index].title),
            subtitle: Text(notifications[index].text),
          );
        },
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
