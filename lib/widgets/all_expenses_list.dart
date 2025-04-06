import 'package:dashboard_responsive/models/expenses_item_model.dart';
import 'package:dashboard_responsive/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({super.key});

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  int selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectItem != 0) {
                setState(() {
                  selectItem = 0;
                });
              }
            },
            child: AllExpensesItem(
              expensesItemModel: allExpenseslist[0],
              isSelect: selectItem == 0,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectItem != 1) {
                setState(() {
                  selectItem = 1;
                });
              }
            },
            child: AllExpensesItem(
              expensesItemModel: allExpenseslist[1],
              isSelect: selectItem == 1,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectItem != 2) {
                setState(() {
                  selectItem = 2;
                });
              }
            },
            child: AllExpensesItem(
              expensesItemModel: allExpenseslist[2],
              isSelect: selectItem == 2,
            ),
          ),
        ),
      ],
    );
  }
}
