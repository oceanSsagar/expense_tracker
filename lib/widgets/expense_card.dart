import "package:expense_tracker/models/expense.dart";
import "package:flutter/material.dart";

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
        child: Column(
      children: [
        Text(expense.title),
        Row(
          children: [
            Text("\$${expense.amount.toStringAsFixed(2)}"),
            const Spacer(),
            Row(
              children: [
                Icon(Icons.attach_money_sharp),
                Text(expense.date.toString()),
              ],
            )
          ],
        )
      ],
    ));
  }
}
