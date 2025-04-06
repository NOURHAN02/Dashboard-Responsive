import 'dart:ui';
import 'package:dashboard_responsive/utils/app_images.dart';
import 'package:dashboard_responsive/utils/colors.dart';

class ExpensesItemModel {
  final Color colorItem;
  final String image;
  final String title;
  final String date;
  final String price;

  ExpensesItemModel({
    required this.colorItem,
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });
}

List<ExpensesItemModel> allExpenseslist = [
  ExpensesItemModel(
    colorItem: AppColor.secondColor,
    image: ImageConstant.imagesBalance,
    title: "Balance",
    date: "April 2022",
    price: r"$20,12,9",
  ),
  ExpensesItemModel(
    colorItem: AppColor.whiteSemiBoldColor,
    image: ImageConstant.imagesIncome,
    title: "Income",
    date: "April 2022",
    price: r"$20,129",
  ),
  ExpensesItemModel(
    colorItem: AppColor.whiteSemiBoldColor,
    image: ImageConstant.imagesExpenses,
    title: "Expenses",
    date: "April 2022",
    price: r"$20,129",
  ),
];
