import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/hard-data-source.dart';
import '../../../helper/salary-details-item.dart';
import '../../../widget/global-appbar.dart';
import '../widget/circle-chart.dart';
import '../widget/salary-list.dart';
import '../widget/tatal-due.dart';

class MyDueFeesPage extends StatelessWidget {
  const MyDueFeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get-data-from-datasource
    List<SalarDetailItemModel> salaryDetailsList =
        GlobalDataSource.getDuesItems();

    return Scaffold(
      appBar: globalAppbar(context, "My Dues", () { Get.back();}),
      //body
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        children: [
          //circle-chart
          CircleChart(salaryDetailsList: salaryDetailsList),
          const SizedBox(
            height: 120,
          ),
          SalaryList(salaryDetailsList: salaryDetailsList),

          const TotalDues(),
        ],
      ),
    );
  }
}
