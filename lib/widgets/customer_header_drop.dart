import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleExpenses extends StatelessWidget {
  const TitleExpenses({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColor.grayColor, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Text("Monthly", style: AppStyles.styleMedium16(context)),
                  SizedBox(width: 8),
                  Transform.rotate(
                    angle: -1.57079632679,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
