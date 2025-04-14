import 'package:dashboard_responsive/widgets/custom_drower.dart';
import 'package:dashboard_responsive/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrower()),
        Expanded(flex: 2, child: MobileLayout()),
      ],
    );
  }
}
