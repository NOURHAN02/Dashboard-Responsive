import 'package:dashboard_responsive/widgets/all_customer_text_widget.dart';
import 'package:dashboard_responsive/widgets/last_quick_invoice.dart';
import 'package:dashboard_responsive/widgets/lastest_transaction.dart';
import 'package:dashboard_responsive/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LastestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          AllCustomerTextWidget(),
          SizedBox(height: 24),
          LastQuickInvoice(),
        ],
      ),
    );
  }
}
