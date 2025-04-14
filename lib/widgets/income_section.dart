import 'package:dashboard_responsive/utils/size_config.dart';
import 'package:dashboard_responsive/widgets/customer_header_drop.dart';
import 'package:dashboard_responsive/widgets/income_chart.dart';
import 'package:dashboard_responsive/widgets/income_chart_list.dart';
import 'package:dashboard_responsive/widgets/income_chart_move.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    print(" with is $width*********");
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          TitleExpenses(title: "Income"),
          const SizedBox(height: 16.0),
          width >= SizeConfig.desktop && width < 1750
              ? Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: IncomeChartMove(),
                ),
              )
              :
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded( child: IncomeChart()),
              Expanded(flex: 2, child: IncomeChartList()),
            ],
          ),
        ],
      ),
    );
  }
}
