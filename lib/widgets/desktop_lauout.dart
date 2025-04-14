import 'package:dashboard_responsive/widgets/custom_drower.dart';
import 'package:dashboard_responsive/widgets/expenses.dart';
import 'package:dashboard_responsive/widgets/income_chart.dart';
import 'package:dashboard_responsive/widgets/income_section.dart';
import 'package:dashboard_responsive/widgets/mycard_section_and_transction.dart';
import 'package:flutter/material.dart';

class DesktopLauout extends StatelessWidget {
  const DesktopLauout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrower()),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Expenses()),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: const [
                            MycardSectionAndTransctionHistorySection(),
                            SizedBox(height: 24),
                            Expanded(child: IncomeSection()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(width: 20),
      ],
    );
  }
}
