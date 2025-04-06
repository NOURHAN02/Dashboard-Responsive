import 'package:dashboard_responsive/models/user_info.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:dashboard_responsive/widgets/customer_user_info.dart';
import 'package:flutter/material.dart';

class LastestTransaction extends StatelessWidget {
  const LastestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (contxet, index) {
              return IntrinsicWidth(
                child: CustomerUserInfo(
                  userInfo: lastestTransactionItem[index],
                ),
              );
            },
            itemCount: lastestTransactionItem.length,
          ),
        ),
      ],
    );
  }
}
