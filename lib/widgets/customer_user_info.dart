import 'package:dashboard_responsive/models/user_info.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomerUserInfo extends StatelessWidget {
  const CustomerUserInfo({super.key, required this.userInfo});
  final UserInfo userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.whiteSemiBoldColor,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfo.image),
        //leading: SvgPicture.asset(userInfo.image),
        title: Text(userInfo.name, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          userInfo.email,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
