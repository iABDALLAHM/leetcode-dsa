class Solution {
  int maxDifference(String s) {
      var listOfS = s.split("");
  Map<String, int> mapOfChars = {};

  for (int i = 0; i < listOfS.length; i++) {
    String currentChar = listOfS[i];
    if (mapOfChars.containsKey(currentChar)) {
      mapOfChars[currentChar] = mapOfChars[currentChar]! + 1;
    } else {
      mapOfChars[currentChar] = 1;
    }
  }
  print(mapOfChars);

  int maxOdd = 0;
  int minEven = listOfS.length;

  for (var char in mapOfChars.entries) {
    if (char.value % 2 == 1 && char.value > maxOdd) {
      maxOdd = char.value;
    } else if (char.value % 2 == 0 && char.value < minEven) {
      minEven = char.value;
    }
  }

  print(minEven);
  print(maxOdd);

  return (maxOdd - minEven);
  }
}