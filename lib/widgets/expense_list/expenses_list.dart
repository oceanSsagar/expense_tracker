import "package:flutter/material.dart";
import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widgets/expense_list/expense_card.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenseList, required this.onRemoveExpense});

  final List<Expense> expenseList;

final void Function(Expense expens) onRemoveExpense;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) => Dismissible(
          key: ValueKey(expenseList[index]),
          onDismissed: (direction){onRemoveExpense(expenseList[index]);},
          child: ExpenseCard(expense: expenseList[index])),
    );
  }
}
