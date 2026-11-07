import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense _expense;
  const ExpenseItem(this._expense, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(_expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\$${_expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[_expense.category]),
                    const SizedBox(width: 8),
                    Text(_expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
