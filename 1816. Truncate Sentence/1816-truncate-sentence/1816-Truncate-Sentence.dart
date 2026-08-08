class Solution {
  String truncateSentence(String s, int k) {
    
  List<String> arrOfStrings = s.split(" ");

  String result = "";

  for (int i = 0; i < k; i++) {
    result += "${arrOfStrings[i]} ";
  }

 return result.trim();

  }
}