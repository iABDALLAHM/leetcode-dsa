class Solution {
  int firstUniqChar(String s) {
      Map<String, int> mapString = {};
    for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (mapString.containsKey(char)) {
      mapString[char] = mapString[char]! + 1;
    } else {
      mapString[char] = 0;
    }
  }

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (mapString[char] == 0) {
      return i;
      break;
    }
  }
  return -1;
  }
}