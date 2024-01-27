import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../helper/salary-details-item.dart';

class SalaryListItem extends StatelessWidget {
  const SalaryListItem({
    super.key,
    required this.item,
  });
  final SalarDetailItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          CircleAvatar(
            radius: 14.r,
            backgroundColor: item.color,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                item.title,
                style: TextStyle(fontSize: 16.sp, fontFamily: "Roboto"),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              item.percentage.toString(),
              style: TextStyle(fontSize: 16.sp, fontFamily: "Roboto"),
            ),
          )
        ],
      ),
    );
  }
}
