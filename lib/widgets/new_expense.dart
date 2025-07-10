import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  String _enteredAmount = '';
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  void _saveAmountInput(String inputValue) {
    _enteredAmount = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: _saveAmountInput,
            decoration: InputDecoration(label: Text('Amount')),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_enteredAmount);
                },
                child: const Text('Save expense'),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
            ],
          ),
        ],
      ),
    );
  }
}
