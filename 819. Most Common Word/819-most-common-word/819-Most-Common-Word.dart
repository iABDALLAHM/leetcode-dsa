class Solution {
  String mostCommonWord(String paragraph, List<String> banned) {
      var afterEditString = paragraph
      .replaceAll(RegExp("[^a-z^A-Z]"), " ")
      .replaceAll(RegExp(r"\s+"), " ")
      .trim()
      .toLowerCase()
      .split(" ");
  print(afterEditString);

  Map<String, int> mapOfWords = {};

  for (int i = 0; i < afterEditString.length; i++) {
    String currentKey = afterEditString[i];
    if (!banned.contains(currentKey)) {
      if (mapOfWords.containsKey(currentKey)) {
        mapOfWords[currentKey] = mapOfWords[currentKey]! + 1;
      } else {
        mapOfWords[currentKey] = 1;
      }
    }
  }
  print(mapOfWords);

  int maxOccer = 0;
  String result = "";

  mapOfWords.forEach((key, value) {
    if (value > maxOccer) {
      result = key;
      maxOccer = value;
    }
  });

  return result;

  }
}