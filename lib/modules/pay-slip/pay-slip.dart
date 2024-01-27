import 'package:aladin/modules/pay-slip/widget/pay-slip-item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/hard-data-source.dart';
import '../../widget/global-appbar.dart';
import 'model/pay-slip.dart';

class PaySlipPage extends StatelessWidget {
  const PaySlipPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PaySlipModel> payslipList = GlobalDataSource.getPaySplipItem();
    return Scaffold(
      appBar: globalAppbar(context, "Pay Slip", () {
        Get.back();
      }),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        itemCount: payslipList.length, // Number of items in the list
        itemBuilder: (context, index) {
          return PaySlipItem(
            item: payslipList[index],
            tap: () {},
          );
        },
      ),
    );
  }
}
