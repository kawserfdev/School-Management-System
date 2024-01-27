import 'package:aladin/modules/my-dues/widget/salary-list-item.dart';
import 'package:flutter/material.dart';

import '../../../helper/salary-details-item.dart';

class SalaryList extends StatelessWidget {
  const SalaryList({
    super.key,
    required this.salaryDetailsList,
  });

  final List<SalarDetailItemModel> salaryDetailsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          salaryDetailsList.length,
          (index) => SalaryListItem(
                item: salaryDetailsList[index],
              )),
    );
  }
}
