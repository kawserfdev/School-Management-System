import 'dart:math';

import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/routine/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SuccessFullPage extends StatelessWidget {
  SuccessFullPage({
    super.key,
    required this.successFullMessage,
  });

  final Random random = Random();
  final String successFullMessage;

  Color _getRandomColor() {
    return const Color.fromARGB(255, 237, 245, 249);
  }

  double _getRandomSize() {
    return random.nextDouble() * 60 + 10; // Circle sizes between 50 and 150
  }

  List<Widget> _generateRandomCircles() {
    List<Widget> circles = [];

    for (int i = 0; i < 60; i++) {
      circles.add(
        Positioned(
          left: random.nextDouble() * 400,
          top: random.nextDouble() * 700,
          child: Container(
            width: _getRandomSize(),
            height: _getRandomSize(),
            decoration: BoxDecoration(
              color: _getRandomColor(),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffD9F1FF),
                width: 2,
              ),
            ),
          ),
        ),
      );
    }

    return circles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              'assets/routine/cross.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[100], // Background color
          ),
          ..._generateRandomCircles(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/routine/success.png',
                      height: 200,
                      width: 200,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      successFullMessage,
                      style: TextStyle(
                        fontFamily: ConstantStrings.kAppInterRegular,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),

                //button
                GestureDetector(
                  onTap: () => Get.offAll(const HomeScreen()),
                  child: Button(
                    size: 199.w,
                    title: 'Back To Home Page',
                    color: ConstantColors.indigo,
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
