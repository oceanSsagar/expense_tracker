import "package:flutter/material.dart";
import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widgets/expenses_list.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        title: "cinema",
        amount: 5.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(title: "Bus To Solapur", amount: 400, date: DateTime(2025,1,4,15,35), category: Category.travel)
  ];

  @override
  Widget build(context) {
    return Scaffold(
        body: Column(
      children: [
        Text("Heading"),
        Expanded(child: ExpensesList(expenseList: _registeredExpense)),
      ],
    ));
  }
}
