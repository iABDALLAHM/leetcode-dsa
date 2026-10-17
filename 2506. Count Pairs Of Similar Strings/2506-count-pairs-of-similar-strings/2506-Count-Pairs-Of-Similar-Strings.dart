class Solution {
  int similarPairs(List<String> words) {
    int numOfPairs = 0;

  for (int i = 0; i < words.length; i++) {
    String currentWord = words[i];
    Set<String> currentWordSet = currentWord.split("").toSet();

    for (int j = i + 1; j < words.length; j++) {
      Set<String> currentCheckWordSet = words[j].split("").toSet();
      bool isMatch = true;

      if (currentCheckWordSet.length == currentWordSet.length) {
        for (var char in currentCheckWordSet) {
          if (!currentWordSet.contains(char)) {
            isMatch = false;
            break;
          }
        }

        if (isMatch) {
          numOfPairs++;
        }
      }
    }
  }
  return numOfPairs;
  }
}