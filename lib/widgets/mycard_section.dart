import 'package:dashboard_responsive/utils/styles.dart';
import 'package:dashboard_responsive/widgets/customer_dots.dart';
import 'package:dashboard_responsive/widgets/mycard.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MycardSection extends StatefulWidget {
  const MycardSection({super.key});

  @override
  State<MycardSection> createState() => _MycardSectionState();
}

class _MycardSectionState extends State<MycardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My card", style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        ExpandablePageView.builder(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          itemCount: 3,
          itemBuilder: (contxet, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Mycard(),
            );
          },
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            ...List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CustomerDots(isActive: index == currentPageIndex),
              );
            }),
          ],
        ),
      ],
    );
  }
}
