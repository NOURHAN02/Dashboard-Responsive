import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/view/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColor.backgroundColor),
      home: const DashboardView(),
    );
  }
}
