import 'package:dashboard_responsive/widgets/mycard_section.dart';
import 'package:dashboard_responsive/widgets/transction.dart';
import 'package:flutter/material.dart';

class MycardSectionAndTransctionHistorySection extends StatelessWidget {
  const MycardSectionAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MycardSection(),
          const SizedBox(height: 20),
          Divider(),
          const SizedBox(height: 20),
          Transction(),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
