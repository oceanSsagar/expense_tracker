import "package:flutter/material.dart";
import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widgets/expense_card.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenseList});

  final List<Expense> expenseList;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) => ExpenseCard(expense: expenseList[index]),
    );
  }
}
