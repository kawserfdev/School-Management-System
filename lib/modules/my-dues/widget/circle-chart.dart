import 'package:aladin/helper/salary-details-item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class CircleChart extends StatelessWidget {
  const CircleChart({
    super.key,
    required this.salaryDetailsList,
  });

  final List<SalarDetailItemModel> salaryDetailsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(
        height: 90,
        child: PieChart(PieChartData(
            centerSpaceRadius: 60,
            centerSpaceColor: Colors.white,
            borderData: FlBorderData(
              show: false,
            ),
            sections: List.generate(
              salaryDetailsList.length,
              (index) => PieChartSectionData(
                  value: salaryDetailsList[index].percentage.toDouble(),
                  color: salaryDetailsList[index].color,
                  showTitle: false),
            ))),
      ),
    );
  }
}
