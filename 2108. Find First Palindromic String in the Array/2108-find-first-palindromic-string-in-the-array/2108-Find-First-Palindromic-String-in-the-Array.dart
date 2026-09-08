class Solution {
  String firstPalindrome(List<String> words) {
      String result = "";
  for (int i = 0; i < words.length; i++) {
    String currentString = words[i];
    String oppositeString = words[i].split("").reversed.join();
    if (currentString == oppositeString) {
      result = currentString;

      break;
    }
  }
  return result;
  }
}