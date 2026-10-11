class Solution {
  String oddString(List<String> words) {
      Map<String, List<String>> mapOfDiff = {};

  for (int i = 0; i < words.length; i++) {
    String currentString = words[i];
    List<int> differences = [];
    for (int j = 1; j < currentString.length; j++) {
      int currentDiff =
          (currentString[j].codeUnitAt(0) - "a".codeUnitAt(0)) -
          (currentString[j - 1].codeUnitAt(0) - "a".codeUnitAt(0));

      differences.add(currentDiff);
    }
    String currentKey = differences.join(",");
    mapOfDiff.putIfAbsent(currentKey, () => []).add(currentString);
  }
  print(mapOfDiff);

  String result = "";

  mapOfDiff.forEach((key, value) {
    if (value.length <= 1) {
      result = value[0];
    }
  });

 return result;
  }
}