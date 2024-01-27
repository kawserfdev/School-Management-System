import 'package:flutter/material.dart';
import '../view/screen/colors_pattern-online.dart';
import '../view/screen/upload_document/upload_document_history_screen.dart';
import '../view/screen/upload_document/upload_documnet_class_screen.dart';

class UploadDocumentModel {
  String title;
  String imgUrl;
  Color color;
  Widget widget;

  UploadDocumentModel(this.title, this.imgUrl, this.color, this.widget);

  static List<UploadDocumentModel> item() {
    return [
      UploadDocumentModel(
        'Upload Class Document',
        'assets/onlineclass/UD.png',
        color7,
        const UploadDocumentClass(),
      ),
      UploadDocumentModel(
        'Upload Document History',
        'assets/onlineclass/UD1.png',
        color8,
        const UploadDocumentHistory(),
      ),
    ];
  }
}
