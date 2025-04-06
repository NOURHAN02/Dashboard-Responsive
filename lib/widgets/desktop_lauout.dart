import 'package:dashboard_responsive/widgets/custom_drower.dart';
import 'package:dashboard_responsive/widgets/expenses.dart';
import 'package:flutter/material.dart';

class DesktopLauout extends StatelessWidget {
  const DesktopLauout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrower()),
        SizedBox(width: 20),
        Expanded(flex: 2, child: Expenses()),
      ],
    );
  }
}
