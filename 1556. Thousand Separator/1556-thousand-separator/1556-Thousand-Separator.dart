class Solution {
  String thousandSeparator(int n) {
  String number = n.toString();
  var listOfNum = number.split("");
  var result = [];

  int counter = 0;

  for (int i = listOfNum.length - 1; i >= 0; i--) {
    if (counter == 3) {
      result.add(".");
      counter = 0;
    }
    result.add(listOfNum[i]);
    counter++;
  }

  return result.reversed.join();
  
  }
}