import 'package:dashboard_responsive/utils/size_config.dart';
import 'package:dashboard_responsive/widgets/adaptive_layout_widget.dart';
import 'package:dashboard_responsive/widgets/custom_drower.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )
              : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? const CustomDrower()
              : null,
      body: AdaptiveLayoutWidget(),
    );
  }
}
