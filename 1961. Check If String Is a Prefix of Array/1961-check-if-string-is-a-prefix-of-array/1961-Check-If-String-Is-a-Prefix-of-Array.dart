class Solution {
  bool isPrefixString(String s, List<String> words) {
      String newS = "";
  bool result = false;
  for (int i = 0; i < words.length; i++) {
    newS += words[i];
    if (s == newS) {
      result = true;
      break;
    }
  }
  return result;
  }
}
