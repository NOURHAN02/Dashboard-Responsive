import 'package:dashboard_responsive/models/transction_item_model.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transactionItemModel});
  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.whiteSemiBoldColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16(
            context,
          )
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          transactionItemModel.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color:
                transactionItemModel.isDepit
                    ? AppColor.redColor
                    : AppColor.greenColor,
          ),
        ),
      ),
    );
  }
}
