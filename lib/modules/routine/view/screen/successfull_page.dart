import 'dart:math';

// import 'package:aladin/modules/home/view/screens/dashboard.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
// import 'package:aladin/modules/routine/view/screen/view_routine_page.dart';
import 'package:aladin/modules/routine/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../home/view/screens/home_screen.dart';

class SuccessFull extends StatelessWidget {
  SuccessFull({
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
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset(
            'assets/routine/cross.png',
            height: 40,
            width: 40,
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
                      color: appBarColor,
                      height: 196,
                      width: 196,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      successFullMessage,
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT Bold',
                        fontSize: 20.sp,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),

                //button
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(HomeScreen.routeName),
                      child: const Button(
                        size: 168,
                        title: 'Back to home page',
                        color: buttonColor,
                        textColor: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomePage {
  const HomePage();
}
