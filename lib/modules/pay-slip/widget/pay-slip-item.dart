import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color.dart';
import '../model/pay-slip.dart';

class PaySlipItem extends StatelessWidget {
  const PaySlipItem({
    super.key,
    required this.item,
    required this.tap,
  });
  final PaySlipModel item;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: ConstantColors.border, width: 1),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          fontFamily: "Arial Rounded MT Bold"),
                    ),
                    Text(
                      '${item.amount} TK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ConstantColors.amber,
                        fontFamily: "Arial Rounded MT Bold",
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.date,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                          fontFamily: "Arial Rounded MT Bold"),
                    ),
                    Text(
                      item.time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      item.icon,
                      width: 50,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/icons/download.png',
                      color: buttonColor,
                      width: 50,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
