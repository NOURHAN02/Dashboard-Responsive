import 'package:dashboard_responsive/models/items.dart';
import 'package:dashboard_responsive/widgets/active_item.dart';
import 'package:flutter/material.dart';

class DrowerList extends StatefulWidget {
  const DrowerList({super.key});

  @override
  State<DrowerList> createState() => _DrowerListState();
}

class _DrowerListState extends State<DrowerList> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: itemsDrower.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (active != index) {
              setState(() {
                active = index;
              });
            }
          },
          child:
              active == index
                  ? InActiveItem(items: itemsDrower[index])
                  : ActiveItem(items: itemsDrower[index]),
        );
      },
    );
  }
}
