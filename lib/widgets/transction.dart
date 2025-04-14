import 'package:dashboard_responsive/models/transction_item_model.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:dashboard_responsive/widgets/transction_heaer.dart';
import 'package:dashboard_responsive/widgets/transction_item.dart';
import 'package:flutter/material.dart';

class Transction extends StatelessWidget {
  const Transction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: AppColor.witheBoldColor),
        ),
        const SizedBox(height: 20),
        ...List.generate(transctionItemList.length, (index) {
          return TransctionItem(
            transactionItemModel: transctionItemList[index],
          );
        }),
      ],
    );
  }
}
