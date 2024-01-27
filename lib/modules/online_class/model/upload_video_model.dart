import 'package:flutter/material.dart';
import '../view/screen/colors_pattern-online.dart';
import '../view/screen/upload_history_screen.dart';
import '../view/screen/upload_video_screen.dart';

class UploadVideoClass {
  String title;
  String imgUrl;
  Color color;
  Widget widget;

  UploadVideoClass(this.title, this.imgUrl, this.color, this.widget);

  static List<UploadVideoClass> items() {
    return [
      UploadVideoClass(
        'Upload Video',
        'assets/onlineclass/UVideo1.png',
        color5,
        const VideoUploadScreen(),
      ),
      UploadVideoClass(
        'Upload History',
        'assets/onlineclass/UD1.png',
        color6,
        const VideoHistoryScreen(),
      ),
    ];
  }
}
