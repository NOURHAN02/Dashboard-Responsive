import 'package:dashboard_responsive/widgets/customer_text_form.dart';
import 'package:flutter/material.dart';

class AllCustomerTextWidget extends StatelessWidget {
  const AllCustomerTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomerTextForm(
                textWidget: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: CustomerTextForm(
                textWidget: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        Row(
          children: [
            Expanded(
              child: CustomerTextForm(
                textWidget: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: CustomerTextForm(
                textWidget: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
