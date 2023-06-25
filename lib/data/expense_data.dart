import 'package:expense_tracker/models/expense_item.dart';

class ExpenseData {
  //List of All Expenses
  List<ExpenseItem> overallExpenseList = [];

  //get expense list;
  List<ExpenseItem> getAllExpenseData() {
    return overallExpenseList;
  }

  //add new expense
  void addNewExpense(ExpenseItem newExpense) {
    overallExpenseList.add(newExpense);
  }

  // delete a expense
  void dltExpense(ExpenseItem expense) {
    overallExpenseList.remove(expense);
  }

  //get weekday (mon,tues,....) from date object
  String getWeekDay(DateTime date) {
    switch (date.weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tues';
      case 3:
        return 'Wed';
      case 4:
        return 'Thurs';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';

      default:
      return '';
    }
  }

  //get the date for the start of the week (sunday)
  DateTime startOfWeekDate(){
    DateTime? startOfWeek;

    DateTime today = DateTime.now();

    for
  }


  /*
  convert overall list of expenses into a daily expense summary

  e.g. 
  overallExpenseList=
  [
    [food,2023/06/23,10],
    [drink,2023/06/24,15],
    [travel,2023/06/24,20],
    [food,2023/06/24,15],
    [fees,2023/06/25,40],
    [eat,2023/06/25,60],
    [pen,2023/06/26,30],
  ]
  */
}
