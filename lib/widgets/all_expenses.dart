import 'package:dashboard_responsive/widgets/all_expenses_list.dart';
import 'package:dashboard_responsive/widgets/title_expenses.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TitleExpenses(),
              const SizedBox(height: 16),
              AllExpensesList(),
            ],
          ),
        ),
      ),
    );
  }
}
