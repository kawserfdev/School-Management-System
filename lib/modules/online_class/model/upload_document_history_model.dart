import 'package:flutter/material.dart';
import '../view/screen/upload_document/pdf_dearder_screen.dart';

class UploadDocementHistoryModel {
  String title;
  String subTitle;
  String imgUrl;
  String label;
  Widget widget;

  UploadDocementHistoryModel(
      this.title, this.subTitle, this.imgUrl, this.label, this.widget);

  static List<UploadDocementHistoryModel> item() {
    return [
      UploadDocementHistoryModel(
        'Bangla 1st Paper Class',
        'Topic: Poem',
        'assets/onlineclass/pdf.png',
        'Date: 12/08/2023',
        const PdfReaderVieew(),
      ),
      UploadDocementHistoryModel(
        'Bangla 1st Paper Class',
        'Topic: Poem',
        'assets/onlineclass/doc.png',
        'Date: 12/08/2023',
        const PdfReaderVieew(),
      ),
      UploadDocementHistoryModel(
        'Bangla 1st Paper Class',
        'Topic: Poem',
        'assets/onlineclass/powerpoint.png',
        'Date: 12/08/2023',
        const PdfReaderVieew(),
      ),
      UploadDocementHistoryModel(
        'Bangla 1st Paper Class',
        'Topic: Poem',
        'assets/onlineclass/powerpoint.png',
        'Date: 12/08/2023',
        const PdfReaderVieew(),
      ),
      UploadDocementHistoryModel(
        'Bangla 1st Paper Class',
        'Topic: Poem',
        'assets/onlineclass/pdf.png',
        'Date: 12/08/2023',
        const PdfReaderVieew(),
      ),
    ];
  }
}
