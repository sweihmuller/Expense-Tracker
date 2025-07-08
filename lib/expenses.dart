import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: const [Text('The chart'), Text('Expense list...')],
      ),
    );
  }
}
