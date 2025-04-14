import 'package:dashboard_responsive/widgets/all_expenses_list.dart';
import 'package:dashboard_responsive/widgets/customer_header_drop.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TitleExpenses(title: "All Expenses",),
            const SizedBox(height: 16),
            AllExpensesList(),
          ],
        ),
      ),
    );
  }
}
