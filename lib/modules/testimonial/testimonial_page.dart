import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestimonialPage extends StatelessWidget {
  const TestimonialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
        title: 'Testimonial',
        tap: () {
          Get.back();
        },
      ),
      body: Center(
        child: Text("Testomonial is Empty"),
      ),
    );
  }
}
