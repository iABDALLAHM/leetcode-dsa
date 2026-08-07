class Solution {
  int findPermutationDifference(String s, String t) {
    var listOfS = s.split("");
    var listOfT = t.split("");

  int sumOfDifference = 0;

  Set<String> setOfChars = listOfS.toSet();

  Map<String, int> mapOfS = {};
  Map<String, int> mapOfT = {};

  for (int i = 0; i < listOfS.length; i++) {
    String currentChar = listOfS[i];
    mapOfS[currentChar] = i;
  }
  print(mapOfS);

  for (int i = 0; i < listOfT.length; i++) {
    String currentChar = listOfT[i];
    mapOfT[currentChar] = i;
  }
  print(mapOfT);

  for (var char in setOfChars) {
    int indexOfCurrentCharS = mapOfS[char] ?? 0;
    int indexOfCurrentCharT = mapOfT[char] ?? 0;
    sumOfDifference += (indexOfCurrentCharS - indexOfCurrentCharT).abs();
  }

  return sumOfDifference;

  }
}