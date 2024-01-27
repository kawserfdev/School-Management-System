import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/global-appbar2.dart';

class ResultSheet extends StatelessWidget {
  const ResultSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Result',
          tap: () {
            Get.back();
          }),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
