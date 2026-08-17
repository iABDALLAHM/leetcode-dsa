class Solution {
  String largestEven(String s) {
      String result = "";
  for (int i = s.length - 1; i >= 0; i--) {
    if (int.parse(s[i]) % 2 == 0) {
      result = s.substring(0, i + 1);
      break;
    }
  }

 return result;

  }
}