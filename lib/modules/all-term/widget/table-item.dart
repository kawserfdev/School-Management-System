import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/string.dart';
import '../../../widget/custom-text.dart';

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    super.key,
    required this.items,
    required this.header,
  });

  final List<String> items;
  final String header;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: header == "Subject" ? 28.w : 0),
          child: TextW(
            title: header,
            size: 21.sp,
            fontFamily: ConstantStrings.kAppInterBold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            items.length,
            (index) => Padding(
              padding: EdgeInsets.only(top: 17.h),
              child: TextW(
                textAlign: TextAlign.center,
                title: items[index],
                size: 18.sp,
                fontFamily: ConstantStrings.kAppInterRegular,
              ),
            ),
          ),
        )
      ],
    );
  }
}
