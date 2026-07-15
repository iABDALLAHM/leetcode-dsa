class Solution {
  int countCharacters(List<String> words, String chars) {

 Map<String, int> mapOfChars = {};

  for (var char in chars.split("")) {
    if (mapOfChars.containsKey(char)) {
      mapOfChars[char] = mapOfChars[char]! + 1;
    } else {
      mapOfChars[char] = 1;
    }
  }
  print(mapOfChars);
  int lengthOfWords = 0;

  for (int i = 0; i < words.length; i++) {
    String cuurentWord = words[i];
    Map<String, int> charsMap = Map.from(mapOfChars);
    bool isContains = true;

    for (int j = 0; j < cuurentWord.length; j++) {
      String currentChar = cuurentWord[j];
      if (charsMap.containsKey(currentChar) && charsMap[currentChar]! > 0) {
        charsMap[currentChar] = charsMap[currentChar]! - 1;
      } else {
        isContains = false;
        break;
      }
    }

    if (isContains) {
      lengthOfWords += cuurentWord.length;
    }
  }

  return lengthOfWords;
  }
}