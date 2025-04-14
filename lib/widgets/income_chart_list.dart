import 'package:dashboard_responsive/models/income_chart_model.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class IncomeChartList extends StatelessWidget {
  const IncomeChartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          incomeChartModelItems
              .map((e) => ItemDetails(incomeChartModel: e))
              .toList(),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeChartModel});
  final IncomeChartModel incomeChartModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 6.0,
        backgroundColor: incomeChartModel.color,
      ),
      title: Text(
        incomeChartModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        "${incomeChartModel.value}%",
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: AppColor.primarySemiColor),
      ),
    );
  }
}
