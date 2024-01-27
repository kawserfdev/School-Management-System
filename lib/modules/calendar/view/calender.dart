import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../constants/color.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Calendar", () {
        Get.back();
      }),
      body: const CalendarWithDropdowns(),
    );
  }
}

class CalendarWithDropdowns extends StatefulWidget {
  const CalendarWithDropdowns({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarWithDropdownsState createState() => _CalendarWithDropdownsState();
}

class _CalendarWithDropdownsState extends State<CalendarWithDropdowns> {
  DateRangePickerController controller = DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          SfDateRangePicker(
            controller: controller,
            rangeSelectionColor: ConstantColors.indigo,
            selectionColor: Colors.white,
            todayHighlightColor: Colors.white,
            startRangeSelectionColor: ConstantColors.indigo,
            endRangeSelectionColor: ConstantColors.indigo,
            selectionMode: DateRangePickerSelectionMode.range,
            initialSelectedRange: PickerDateRange(
                DateTime.now().subtract(const Duration(days: 3)),
                DateTime.now().add(const Duration(days: 1))),
          )
        ],
      ),
    );
  }
}
