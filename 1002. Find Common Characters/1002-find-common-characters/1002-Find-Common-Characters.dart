class Solution {
  List<String> commonChars(List<String> words) {
      Map<String, int> minFrequency = {};

  for (int i = 0; i < words[0].length; i++) {
    String currentChar = words[0][i];
    if (minFrequency.containsKey(currentChar)) {
      minFrequency[currentChar] = minFrequency[currentChar]! + 1;
    } else {
      minFrequency[currentChar] = 1;
    }
  }

  for (int i = 1; i < words.length; i++) {
    String currentWord = words[i];
    Map<String, int> currentFreq = {};

    for (int j = 0; j < currentWord.length; j++) {
      String currentChar = currentWord[j];
      if (currentFreq.containsKey(currentChar)) {
        currentFreq[currentChar] = currentFreq[currentChar]! + 1;
      } else {
        currentFreq[currentChar] = 1;
      }
    }

    minFrequency.forEach((char, count) {
      int currentCount = currentFreq[char] ?? 0;
      minFrequency[char] = min(count, currentCount);
    });
  }
  print(minFrequency);

  List<String> result = [];

  minFrequency.forEach((key, value) {
    for (int i = 0; i < value; i++) {
      result.add(key);
    }
  });

  return result;
  }
}