class Solution {
  String removeTrailingZeros(String num) {

    String result = "";

  for (int i = num.length - 1; i >= 0; i--) {
    if (int.parse(num[i]) != 0) {
      result = num.substring(0, i+1);
      break;
    }
  }
  return result;
  }
}

