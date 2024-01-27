import 'package:aladin/modules/live_chat/chat.dart';
import 'package:flutter/material.dart';

import '../../../online_class/view/screen/colors_pattern-online.dart';
import '../view/screen/emergency_contact.dart/emergency_contarct.dart';
import '../view/screen/user_menual/user_manual.dart';

class HelpCenterModel {
  String title;
  String imgUrl;
  Color color;
  Widget widget;

  HelpCenterModel(this.title, this.imgUrl, this.color, this.widget);

  static List<HelpCenterModel> items() {
    return [
      HelpCenterModel(
        'User Menual',
        'assets/helpcenter/UserManual.png',
        color1,
        const UserManualScreen(),
      ),
      HelpCenterModel(
        'Emergency Contact',
        'assets/helpcenter/EContact.png',
        color2,
        const EmergencyContactScreen(),
      ),
      HelpCenterModel(
        'Live Chat',
        'assets/helpcenter/LiveChat.png',
        color3,
        const ChatScreen(),
      ),
    ];
  }
}
