import 'dart:ui';

import 'package:dashboard_responsive/utils/colors.dart';

class IncomeChartModel {
final String title;
final double value;
final Color color;

  IncomeChartModel({required this.title, required this.value, required this.color});

}
List<IncomeChartModel>incomeChartModelItems=[
IncomeChartModel(title: "Design service", value:40 , color: AppColor.primarySemiColor),
IncomeChartModel(title: "Design product", value:25 , color: AppColor.secondColor),
IncomeChartModel(title: "Product royalti", value:20 , color: AppColor.primaryColor),
IncomeChartModel(title: "Other", value:22 , color: AppColor.whiteChartColor),

];