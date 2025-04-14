
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context),
            ),

            Text(
              "See all",
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: AppColor.secondColor),
            ),
          ],
        );
  }
}