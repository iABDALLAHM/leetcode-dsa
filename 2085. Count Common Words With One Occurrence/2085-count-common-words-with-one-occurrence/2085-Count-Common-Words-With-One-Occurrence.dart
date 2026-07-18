class Solution {
  int countWords(List<String> words1, List<String> words2) {
    
  Map<String, int> mapOfWords1 = {};
  Map<String, int> mapOfWords2 = {};

  for (int i = 0; i < words1.length; i++) {
    String currentWord = words1[i];
    if (mapOfWords1.containsKey(currentWord)) {
      mapOfWords1[currentWord] = mapOfWords1[currentWord]! + 1;
    } else {
      mapOfWords1[currentWord] = 1;
    }
  }

  for (int i = 0; i < words2.length; i++) {
    String currentWord = words2[i];
    if (mapOfWords2.containsKey(currentWord)) {
      mapOfWords2[currentWord] = mapOfWords2[currentWord]! + 1;
    } else {
      mapOfWords2[currentWord] = 1;
    }
  }

  print(mapOfWords1);
  print(mapOfWords2);

  int counter = 0;

  mapOfWords1.forEach((key, value) {
    int valueOfMap2 = mapOfWords2[key] ?? 0;
    int valueOfMap1 = value;

    if (valueOfMap1 == 1 && valueOfMap2 == 1) {
      counter++;
    }
  });
  
  return counter;
  }
}