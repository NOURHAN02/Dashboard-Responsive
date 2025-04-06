import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomerButton extends StatelessWidget {
  const CustomerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20.0),
        backgroundColor: AppColor.secondColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {},
      child: Text("Send Money", style: AppStyles.styleSemiBold18(context)),
    );
  }
}
