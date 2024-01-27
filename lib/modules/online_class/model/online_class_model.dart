import 'package:flutter/material.dart';
import '../view/screen/colors_pattern-online.dart';
import '../view/screen/onlines_creen/participate_class_screen.dart';
// import '../view/screen/onlines_creen/take_class_screen.dart';
// import '../view/screen/onlines_creen/upload_document_screen.dart';
// import '../view/screen/onlines_creen/upload_video_class_screen.dart';

class OnlineClassItem {
  String title;
  String imgUrl;
  Color color;
  Widget widget;

  OnlineClassItem(this.title, this.imgUrl, this.color, this.widget);

  static List<OnlineClassItem> items() {
    return [
      OnlineClassItem(
        'Participate Class', // title
        'assets/onlineclass/OnlineExam.png', // imgUrl
        color1, // color
        const ParticipateClassScreen(), // widget
      ),
      // OnlineClassItem(
      //   'Participate Class', // title
      //   'assets/onlineclass/OnlineExam.png', // imgUrl
      //   color1, // color
      //   const CreateClassScreen(), // widget
      // ),
      // OnlineClassItem(
      //   'Take Class',
      //   'assets/onlineclass/take_class.png',
      //   color2,
      //   const TakeClassScreen(),
      // ),
      // OnlineClassItem(
      //   'Upload Video Class',
      //   'assets/onlineclass/UD.png',
      //   color3,
      //   const UVCScreen(),
      // ),
      // OnlineClassItem(
      //   'Upload Document',
      //   'assets/onlineclass/UVC.png',
      //   color4,
      //   const UVDScreen(),
      // ),
    ];
  }
}
