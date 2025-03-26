import 'package:dashboard_responsive/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
       return LayoutBuilder(
      builder: ( context,  constraints) {
        if(constraints.maxWidth <800){
          return TextColor(text: "mobile");
        }else if(constraints.maxWidth <1200){
          return TextColor(text: "tablets");
        }else{
          return TextColor(text: "desktop");
        }

      },
    );
  }
}