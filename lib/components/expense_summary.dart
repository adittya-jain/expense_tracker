import 'package:expense_tracker/bar_graph/bar_graph.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:expense_tracker/dateTime/date_time_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpenseSummary extends StatelessWidget {
  final DateTime startOfTheWEeek;
  const ExpenseSummary({super.key, required this.startOfTheWEeek});

  @override
  Widget build(BuildContext context) {
    String sunday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 0)));
    String monday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 1)));
    String tuesday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 2)));
    String wednesday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 3)));
    String thursday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 4)));
    String friday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 5)));
    String saturday = formatDateToYYYYMMDD(startOfTheWEeek.add(Duration(days: 6)));
    return Consumer<ExpenseData>(
      builder: (context, value, child) => SizedBox(
        height: 200,
        child: BarGraph(
          maxY: 100,
          sunAmount: value.calculateDailyExpenses()[sunday]??0,
          monAmount: value.calculateDailyExpenses()[monday]??0,
          tuesAmount: value.calculateDailyExpenses()[tuesday]??0,
          wedAmount: value.calculateDailyExpenses()[wednesday]??0,
          thurAmount: value.calculateDailyExpenses()[thursday]??0,
          friAmount: value.calculateDailyExpenses()[friday]??0,
          satAmount: value.calculateDailyExpenses()[saturday]??0,
        ),
      ),
    );
  }
}
