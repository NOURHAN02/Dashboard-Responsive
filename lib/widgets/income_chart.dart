import 'package:dashboard_responsive/models/income_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          sections:
              incomeChartModelItems
                  .map((item) => incomeChartItemDesktop(item))
                  .toList(),
        ),
        duration: Duration(milliseconds: 150), // Optional
        // Optional
      ),
    );
  }
}

PieChartSectionData incomeChartItemDesktop(IncomeChartModel item) =>
    PieChartSectionData(
      radius: 50,
      showTitle: false,
      value: item.value,
      color: item.color,
    );
