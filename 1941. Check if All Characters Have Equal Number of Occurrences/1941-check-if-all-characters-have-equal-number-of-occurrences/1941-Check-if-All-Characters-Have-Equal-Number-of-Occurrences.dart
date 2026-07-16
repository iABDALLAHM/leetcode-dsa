class Solution {
  bool areOccurrencesEqual(String s) {
     Map<String, int> charsMap = {};

  for (int i = 0; i < s.split("").length; i++) {
    String currentKey = s[i];
    if (charsMap.containsKey(currentKey)) {
      charsMap[currentKey] = charsMap[currentKey]! + 1;
    } else {
      charsMap[currentKey] = 1;
    }
  }
  print(charsMap);
  var firstValueOnMap = charsMap.values.first;

  return  charsMap.values.every((value) => value == firstValueOnMap);

  }
}