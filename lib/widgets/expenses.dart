import 'package:dashboard_responsive/widgets/all_expenses.dart';
import 'package:dashboard_responsive/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [AllExpenses(), const SizedBox(height: 24), QuickInvoice()],
      ),
    );
  }
}
