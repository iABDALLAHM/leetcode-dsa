class Solution {
  void reverseString(List<String> s) {
  List<String> copyOfS = List.from(s);
  int pointer = 0;
  for (int i = copyOfS.length - 1; i >= 0; i--) {
    s[pointer] = copyOfS[i];
    pointer++;
  }

  }
}