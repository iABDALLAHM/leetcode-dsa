class Solution {
  bool isAcronym(List<String> words, String s) {
  String acronymString = "";

  for (int i = 0; i < words.length; i++) {
    acronymString += words[i][0];
  }

  if (acronymString == s) {
    return true;
  } else {
    return false;
  }

  }
}