import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice", style: AppStyles.styleSemiBold20(context)),
        const Spacer(),
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColor.whiteSemiBoldColor,
          child: Icon(Icons.add, color: AppColor.secondColor),
        ),
      ],
    );
  }
}
