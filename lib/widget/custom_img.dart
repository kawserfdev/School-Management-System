// import 'package:aladin/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomImg extends StatelessWidget {
  String imgUrl;
  double? imgHeight;
  double? imgWidth;
  BoxFit? imgFit;

  CustomImg({
    Key? key,
    required this.imgUrl,
    this.imgHeight,
    this.imgWidth,
    this.imgFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  print('promo url');
    // print(imgUrl);
    return SizedBox(
      width: imgWidth ?? 348.w,
      height: imgHeight,
      child: Image.network(
        imgUrl,
        loadingBuilder: (context, child, progress) => progress == null
            ? child
            : Center(
                child: CircularProgressIndicator(
                  value: progress.expectedTotalBytes != null
                      ? progress.cumulativeBytesLoaded /
                          progress.expectedTotalBytes!
                      : null,
                ),
              ),
        errorBuilder: (context, error, stackTrace) => Icon(
          Icons.image,
          size: 30.h,
          color: Colors.grey,
        ),
        fit: imgFit ?? BoxFit.cover,
      ),
    );
  }
}
