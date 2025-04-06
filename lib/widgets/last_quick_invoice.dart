import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:dashboard_responsive/widgets/customer_button.dart';
import 'package:flutter/material.dart';

class LastQuickInvoice extends StatelessWidget {
  const LastQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add more details",
                  style: AppStyles.styleSemiBold18(
                    context,
                  ).copyWith(color: AppColor.secondColor),
                ),
                const SizedBox(width: 30),
                CustomerButton(),
              ],
            ),
          );
  }
}