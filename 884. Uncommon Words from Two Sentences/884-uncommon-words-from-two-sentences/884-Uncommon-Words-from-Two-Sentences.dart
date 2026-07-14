class Solution {
  List<String> uncommonFromSentences(String s1, String s2) {
    
  var listOfWordsS1 = s1.split(" ");
  var listOfWordsS2 = s2.split(" ");

  Map<String, int> wordsMap = {};

  for (int i = 0; i < listOfWordsS1.length; i++) {
    String currentWord = listOfWordsS1[i];
    if (wordsMap.containsKey(currentWord)) {
      wordsMap[currentWord] = wordsMap[currentWord]! + 1;
    } else {
      wordsMap[currentWord] = 1;
    }
  }

  for (int i = 0; i < listOfWordsS2.length; i++) {
    String currentWord = listOfWordsS2[i];
    if (wordsMap.containsKey(currentWord)) {
      wordsMap[currentWord] = wordsMap[currentWord]! + 1;
    } else {
      wordsMap[currentWord] = 1;
    }
  }

//   print(wordsMap);

  List<String> wordsResult = [];

  wordsMap.forEach((key, value) {
    if (value < 2) {
      wordsResult.add(key);
    }
  });

  return wordsResult;
  }
}