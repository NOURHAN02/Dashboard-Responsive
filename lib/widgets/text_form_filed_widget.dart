import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: AppColor.whiteSemiBoldColor),
    );
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.whiteSemiBoldColor,
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context),
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }
}
