import 'package:dashboard_responsive/models/items.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.items});
  final Items items;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(items.image),
      title: Text(items.title, style: AppStyles.styleRegular16(context)),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.items});
  final Items items;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(items.image),
      title: Text(items.title, style: AppStyles.styleBold16(context)),
      trailing: Container(width: 2, color: AppColor.secondColor),
    );
  }
}
