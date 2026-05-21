1class Solution {
2  int strStr(String haystack, String needle) {
3 for (int i = 0; i <= haystack.length - needle.length; i++) {
4  if (haystack.substring(i, i + needle.length) == needle) {
5   return i;
6    break;
7  }
8  }
9  return -1;
10}}