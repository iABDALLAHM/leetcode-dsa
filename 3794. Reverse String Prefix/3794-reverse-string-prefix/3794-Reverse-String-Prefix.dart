class Solution {
  String reversePrefix(String s, int k) {
      return s.substring(0, k).split("").reversed.join() + s.substring(k);
  }
}