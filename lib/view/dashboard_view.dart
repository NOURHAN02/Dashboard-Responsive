import 'package:dashboard_responsive/widgets/adaptive_layout_widget.dart';
import 'package:dashboard_responsive/widgets/desktop_lauout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    //return AdaptiveLayoutWidget();
    return Scaffold(body: DesktopLauout());
  }
}
