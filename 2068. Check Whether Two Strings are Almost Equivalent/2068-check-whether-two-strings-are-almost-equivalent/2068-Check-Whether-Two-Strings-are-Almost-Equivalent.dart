class Solution {
  bool checkAlmostEquivalent(String word1, String word2) {

    List<String> listOfCharsWord1 = word1.split("");
    List<String> listOfCharsWord2 = word2.split("");

    Map<String, int> mapOfWord1 = {};
    Map<String, int> mapOfWord2 = {};

  for (int i = 0; i < listOfCharsWord1.length; i++) {
    String currentChar = listOfCharsWord1[i];
    if (mapOfWord1.containsKey(currentChar)) {
      mapOfWord1[currentChar] = mapOfWord1[currentChar]! + 1;
    } else {
      mapOfWord1[currentChar] = 1;
    }
  }

  print(mapOfWord1);

  for (int i = 0; i < listOfCharsWord2.length; i++) {
    String currentChar = listOfCharsWord2[i];
    if (mapOfWord2.containsKey(currentChar)) {
      mapOfWord2[currentChar] = mapOfWord2[currentChar]! + 1;
    } else {
      mapOfWord2[currentChar] = 1;
    }
  }

  Set<String> allChars = {...mapOfWord1.keys, ...mapOfWord2.keys};

  bool result = true;

  for (String char in allChars) {
    int count1 = mapOfWord1[char] ?? 0;
    int count2 = mapOfWord2[char] ?? 0;

    if ((count1 - count2).abs() > 3) {
      result = false;
      break;
    }
  }
  
  return result;
  }
}