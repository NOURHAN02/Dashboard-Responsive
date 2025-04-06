import 'package:dashboard_responsive/utils/styles.dart';
import 'package:dashboard_responsive/widgets/text_form_filed_widget.dart';
import 'package:flutter/material.dart';

class CustomerTextForm extends StatelessWidget {
  const CustomerTextForm({super.key, required this.textWidget, required this.hintText});
final String textWidget, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(textWidget,style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 12.0,),
        TextFormFiledWidget(hintText: hintText,),

      ],
    );
  }
}