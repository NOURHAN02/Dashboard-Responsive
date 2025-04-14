import 'package:dashboard_responsive/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomerDots extends StatelessWidget {
  const CustomerDots({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      child: Container(
        width: isActive ? 32.0 : 8.0,
        height: 8.0,
        decoration: BoxDecoration(
          color: isActive ? AppColor.secondColor : AppColor.graysemiColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
