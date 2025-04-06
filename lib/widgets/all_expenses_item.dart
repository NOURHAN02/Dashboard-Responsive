import 'package:dashboard_responsive/models/expenses_item_model.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.expensesItemModel,
    required this.isSelect,
  });
  final ExpensesItemModel expensesItemModel;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColor.grayColor, width: 1),
        color: isSelect ? AppColor.secondColor : Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                expensesItemModel.image,
                // ignore: deprecated_member_use
                color: isSelect ? Colors.white : AppColor.secondColor,
              ),
              Spacer(),
              Transform.rotate(
                angle: -3.14159265359,
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: isSelect ? Colors.white : AppColor.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 32.0),
          Text(
            expensesItemModel.title,
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: isSelect ? Colors.white : AppColor.primaryColor),
          ),
          SizedBox(height: 8.0),

          Text(
            expensesItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color:
                  isSelect
                      ? AppColor.whiteSemiBoldColor
                      : AppColor.witheBoldColor,
            ),
          ),
          SizedBox(height: 16.0),

          Text(
            expensesItemModel.price,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: isSelect ? Colors.white : AppColor.secondColor),
          ),
        ],
      ),
    );
  }
}
