import "package:flutter/material.dart";
import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widgets/expense_list/expenses_list.dart";
import "package:expense_tracker/widgets/new_expense.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return NewExpense(
            onAddExpense: _addExpense,
          );
        });
  }

  void _addExpense(Expense expense) {
    final expenseIndex = _registeredExpense.indexOf(expense);
    setState(() {
      _registeredExpense.add(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Expense Deleted"),
        duration: Duration(seconds: 3),
        action: SnackBarAction(label: "undo", onPressed: (){
          setState(() {
            _registeredExpense.insert(expenseIndex, expense);
          });
        }),
      ),
    );
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpense.remove(expense);
    });
  }

  @override
  Widget build(context) {
    Widget mainContent = const Center(
      child: Text("No Expenses found. Add some!"),
    );

    if (_registeredExpense.isNotEmpty) {
      mainContent = ExpensesList(
        expenseList: _registeredExpense,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: _openAddExpenseOverlay,
              icon: Icon(Icons.add),
            ),
          ],
          title: Text("Expense Tracker"),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(child: mainContent),
          ],
        ));
  }
}
