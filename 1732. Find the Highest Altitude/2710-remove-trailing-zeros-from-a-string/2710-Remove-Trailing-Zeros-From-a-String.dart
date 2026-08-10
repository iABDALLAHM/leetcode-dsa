class Solution {
  String removeTrailingZeros(String num) {
    var listOfNumber = stringNumber.split("");
    String result = "";

  for (int i = listOfNumber.length - 1; i > 0; i--) {
    if (int.parse(listOfNumber[i]) != 0) {
      result = stringNumber.substring(0, i + 1);
      break;
    }
  }

  return result;

  }
}