import 'package:dashboard_responsive/models/items.dart';
import 'package:dashboard_responsive/models/user_info.dart';
import 'package:dashboard_responsive/widgets/active_item.dart';
import 'package:dashboard_responsive/widgets/customer_user_info.dart';
import 'package:dashboard_responsive/widgets/drower_list.dart';
import 'package:flutter/material.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomerUserInfo(userInfo: firstAvater)),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrowerList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                ActiveItem(items: settingsItem),
                ActiveItem(items: logOutItem),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
