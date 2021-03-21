  import 'package:shamsi_date/shamsi_date.dart';

convertSecondstoDate(int seconds) {
    if (seconds != null) {
      int intTime = seconds.round();
      var date = new DateTime.fromMillisecondsSinceEpoch(intTime * 1000);
      Jalali jalaliDate = Jalali.fromDateTime(date);
      String day = jalaliDate.day.toString();
      if (day.length == 1) {
        day = "0$day";
      }
      String month = jalaliDate.month.toString();
      if (month.length == 1) {
        month = "0$month";
      }
      int year = jalaliDate.year;
      String trueDate = "$year/$month/$day";
      return trueDate;
    } else
      return " ";
  }
