import 'package:expense_tracker/components/expense_summary.dart';
import 'package:expense_tracker/components/expense_tile.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:expense_tracker/models/expense_item.dart';
import 'package:expense_tracker/models/floating_button_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();

  void save() {
    //Create the Expense Item
    ExpenseItem newExpense = ExpenseItem(
      name: newExpenseNameController.text,
      amount: newExpenseAmountController.text,
      dateTime: DateTime.now(),
    );
    //Add the new Expense
    Provider.of<ExpenseData>(context, listen: false).addNewExpense(newExpense);

    Navigator.pop(context);
    clear();
  }

  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    newExpenseNameController.clear();
    newExpenseNameController.clear();
  }

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
    return Consumer<ExpenseData>(
      builder: (context, value, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: addNewExpense,
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,

        //Trying the animator but don't know how this thing works
        //floatingActionButtonAnimator: MyCustomFabAnimator(),
        body: ListView(children: [
          //weekly summary

          ExpenseSummary(startOfTheWEeek: value.startOfWeekDate()),

          //expense list
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          itemCount: value.getAllExpenseData().length,
          itemBuilder: (context, index) => ExpenseTile(
            name: value.getAllExpenseData()[index].name,
            amount: value.getAllExpenseData()[index].amount,
            dateTime: value.getAllExpenseData()[index].dateTime,
          ),
        ),
        ],)
      ),
    );
  }
}
