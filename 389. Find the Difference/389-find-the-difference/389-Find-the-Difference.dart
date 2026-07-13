class Solution {
  String findTheDifference(String s, String t) {


  Map<String, int> mapOfChars = {};

  for (int i = 0; i < s.length; i++) {
    String currentKey = s[i];
    if (mapOfChars.containsKey(s[i])) {
      mapOfChars[currentKey] = mapOfChars[currentKey]! + 1;
    } else {
      mapOfChars[currentKey] = 1;
    }
  }

  for (int i = 0; i < t.length; i++) {
    String currentKey = t[i];
    if (mapOfChars.containsKey(t[i])) {
      mapOfChars[currentKey] = mapOfChars[currentKey]! + 1;
    } else {
      mapOfChars[currentKey] = 1;
    }
  }

  print(mapOfChars);

  for (var entry in mapOfChars.entries) {
    if (entry.value % 2 == 1) {
      print(entry.key);
      break;
    }
  }

  return "";

  }
}
