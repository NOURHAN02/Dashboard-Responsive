import 'package:dashboard_responsive/models/income_chart_model.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChartMove extends StatefulWidget {
  const IncomeChartMove({super.key});

  @override
  State<IncomeChartMove> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChartMove> {
  int currentindex = -1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, p1) {
              currentindex = p1?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: List.generate(incomeChartModelItems.length, (index) {
            return incomeChartItemAll(index, currentindex,context);
          }),
        ),
        duration: Duration(milliseconds: 150), // Optional
        // Optional
      ),
    );
  }
}


PieChartSectionData incomeChartItemAll(index, currentIndex, context) =>
    PieChartSectionData(
      radius: currentIndex == index ? 60 : 50,
      title:
          currentIndex == index
              ? incomeChartModelItems[index].title
              : "${incomeChartModelItems[index].value}%",
      titleStyle: AppStyles.styleBold16(context).copyWith(
        color: currentIndex == index ? AppColor.primaryColor : Colors.white,
      ),
      titlePositionPercentageOffset:
          currentIndex == index
              ? index == 2
                  ? 1.3
                  : 1
              : null,
      value: incomeChartModelItems[index].value,
      color: incomeChartModelItems[index].color,
    );
