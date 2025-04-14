import 'package:dashboard_responsive/widgets/desktop_lauout.dart';
import 'package:dashboard_responsive/widgets/mobile_layout.dart';
import 'package:dashboard_responsive/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return MobileLayout();
        } else if (constraints.maxWidth < 1200) {
          return TabletLayout();
        } else {
          return DesktopLauout();
        }
      },
    );
  }
}
