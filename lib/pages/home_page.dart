import 'package:expense_tracker/models/floating_button_animation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();

  void save(){}

  void cancel(){}

  void addNewExpense() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Add new Expense"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Expense description
            TextField(
              controller: newExpenseNameController,
            ),
            //Amount
            TextField(
              controller: newExpenseAmountController,
            ),
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: save,
            child: Text('Save'),
          ),
          MaterialButton(
            onPressed: cancel,
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Hello World')),

      floatingActionButton: FloatingActionButton(
        onPressed: addNewExpense,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,

      //Trying the animator but don't know how this thing works
      //floatingActionButtonAnimator: MyCustomFabAnimator(),
    );
  }
}
