class Solution {
  int countSeniors(List<String> details) {
      int moreThan60Counter = 0;

  for (int i = 0; i < details.length; i++) {
    if (int.parse(details[i][11]) * 10 + int.parse(details[i][12]) > 60) {
      moreThan60Counter++;
    }
  }

  return moreThan60Counter;

  }
}