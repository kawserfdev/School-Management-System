import 'package:flutter/material.dart';

import '../../../online_class/view/screen/colors_pattern-online.dart';
import '../view/screen/user_menual/pdf_instruction.dart';
import '../view/screen/user_menual/video_instruction.dart';

class UserMenualModel {
  String title;
  String imgUrl;
  Color color;
  Widget widget;

  UserMenualModel(this.title, this.imgUrl, this.color, this.widget);

  static List<UserMenualModel> items() {
    return [
      UserMenualModel(
        'Pdf Instruction',
        'assets/helpcenter/pdfInstruc.png',
        color1,
        const PdfInstructionScreen(),
      ),
      UserMenualModel(
        'Video Instruction',
        'assets/helpcenter/VInstructions.png',
        color2,
        const VideoInstructionScreen(),
      ),
    ];
  }
}
