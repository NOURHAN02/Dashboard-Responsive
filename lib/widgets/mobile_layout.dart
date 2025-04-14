import 'package:dashboard_responsive/widgets/expenses.dart';
import 'package:dashboard_responsive/widgets/income_section.dart';
import 'package:dashboard_responsive/widgets/mycard_section_and_transction.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: const [
            Expenses(),
            MycardSectionAndTransctionHistorySection(),
            SizedBox(height: 24),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
