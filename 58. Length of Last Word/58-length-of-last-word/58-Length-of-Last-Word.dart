class Solution {
  int lengthOfLastWord(String s) {
      var lengthOfLastWord = s
      .trim()
      .replaceAll(RegExp(r"\s+"), " ")
      .split(" ")
      .last
      .length;

  return lengthOfLastWord;
  }
}