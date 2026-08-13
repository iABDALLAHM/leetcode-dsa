class Solution {
  int dayOfYear(String date) {

  var partsOfDate = date.split("-");
  print(partsOfDate);
  int thisYear = int.parse(partsOfDate[0]);
  int monthOfThisYear = int.parse(partsOfDate[1]);
  int dayOfThisYear = int.parse(partsOfDate[2]);
  print(thisYear);
  print(monthOfThisYear);
  print(dayOfThisYear);
  List<int> allDaysMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  int sumOfDaysOfPastMonths = 0;
  int daysOfThisMonth = dayOfThisYear;

  bool isLeap =
      (thisYear % 4 == 0 && thisYear % 100 != 0) || (thisYear % 400 == 0);

  for (int i = 0; i < monthOfThisYear - 1; i++) {
    sumOfDaysOfPastMonths += allDaysMonths[i];
  }
  print(sumOfDaysOfPastMonths);
  int dayOfTheYear = sumOfDaysOfPastMonths + daysOfThisMonth;

  if (isLeap && monthOfThisYear > 2) {
    dayOfTheYear += 1;
  }

  return dayOfTheYear;

  }
}