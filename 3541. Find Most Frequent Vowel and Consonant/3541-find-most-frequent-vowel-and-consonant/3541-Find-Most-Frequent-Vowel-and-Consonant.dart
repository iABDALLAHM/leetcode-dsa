class Solution {
  int maxFreqSum(String s) {
    List<String> listOfVowels = ["a", "e", "i", "o", "u"];

    Map<String, int> charsMap = {};

    for (int i = 0; i < s.length; i++) {
      if (charsMap.containsKey(s[i])) {
      charsMap[s[i]] = charsMap[s[i]]! + 1;
    } else {
      charsMap[s[i]] = 1;
    }
    }

    int charFreq = 0;
    int vowelFreq = 0;

    charsMap.forEach((key, value) {
    if (!listOfVowels.contains(key) && value > charFreq) {
      charFreq = value;
    }
    if (listOfVowels.contains(key) && value > vowelFreq) {
      vowelFreq = value;
    }
    });

    return charFreq + vowelFreq;
  }
}
