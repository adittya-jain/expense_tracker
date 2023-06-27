String formatDateToYYYYMMDD(DateTime dateTime) {
  String year = dateTime.year.toString();
  String month = dateTime.month.toString().padLeft(2, '0');
  String day = dateTime.day.toString().padLeft(2, '0');

  String yyyymmdd = year + month +day;

  return yyyymmdd;
}
