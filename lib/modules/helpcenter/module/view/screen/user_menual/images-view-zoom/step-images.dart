import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class StepImages extends StatefulWidget {
  final String imageUrl;

  StepImages({required this.imageUrl});

  @override
  State<StepImages> createState() => _StepImagesState();
}

class _StepImagesState extends State<StepImages> {
  bool _isZoomed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, 'Setp Images', () {
        Get.back();
      }),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isZoomed = !_isZoomed;
          });
        },
        child: PhotoView(
          backgroundDecoration: BoxDecoration(
            color: whiteColor,
          ),
          imageProvider: AssetImage(widget.imageUrl),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2,
          initialScale: _isZoomed
              ? PhotoViewComputedScale.covered
              : PhotoViewComputedScale.contained,
        ),
      ),
    );
  }
}
