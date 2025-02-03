import "package:expense_tracker/models/expense.dart";
import "package:flutter/material.dart";

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      
        child: Padding(
          
          padding: const EdgeInsets.fromLTRB(10,20,10,20),
          child: Column(
                children: [
          Text(expense.title),
          Row(
            children: [
              Text("\$${expense.amount.toStringAsFixed(2)}"),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  Text(expense.formattedDate),
                ],
              )
            ],
          )
                ],
              ),
        ));
  }
}
