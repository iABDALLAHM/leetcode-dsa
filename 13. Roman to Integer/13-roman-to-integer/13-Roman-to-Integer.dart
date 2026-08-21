class Solution {
  int romanToInt(String s) {
      List<String> listOfSymbol = ["I", "V", "X", "L", "C", "D", "M"];
  List<int> listOfValues = [1, 5, 10, 50, 100, 500, 1000];

  Map<String, int> mapOfRomanChar = {};

  for (int i = 0; i < listOfSymbol.length; i++) {
    String currentSymbol = listOfSymbol[i];
    int currentValue = listOfValues[i];
    if (mapOfRomanChar.containsKey(currentSymbol)) {
      mapOfRomanChar[currentSymbol] = mapOfRomanChar[currentSymbol]! + 1;
    } else {
      mapOfRomanChar[currentSymbol] = currentValue;
    }
  }

  print(mapOfRomanChar);

  int total = 0;

  for (int i = 0; i < s.length; i++) {
    int currentValue = mapOfRomanChar[s[i]]!;
    if (i < s.length - 1 && currentValue < mapOfRomanChar[s[i + 1]]!) {
      total -= currentValue;
    } else {
      total += currentValue;
    }
  }

  return total;
  }
}