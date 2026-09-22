class Solution {
  int firstMatchingIndex(String s) {
     int pointer1 = 0;
  int pointer2 = s.length - 1;

  int result = -1;
  while (pointer2 >= pointer1) {
    if (s[pointer1] == s[pointer2]) {
      result = pointer1;
      break;
    }
    pointer2--;
    pointer1++;
  }
  return result;
  }
}