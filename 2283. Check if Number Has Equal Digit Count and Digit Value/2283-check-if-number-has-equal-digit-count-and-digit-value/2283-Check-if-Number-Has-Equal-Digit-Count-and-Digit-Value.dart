class Solution {
  bool digitCount(String num) {
      Map<String, int> occerNumMap = {};

  for (int i = 0; i < num.length; i++) {
    String currentNum = num[i];
    if (occerNumMap.containsKey(currentNum)) {
      occerNumMap[currentNum] = occerNumMap[currentNum]! + 1;
    } else {
      occerNumMap[currentNum] = 1;
    }
  }

  for (int i = 0; i < num.length; i++) {
    String digitI = i.toString();
    int expectedCount = int.parse(num[i]);

    int actualCount = occerNumMap[digitI] ?? 0;

    if (actualCount != expectedCount) {
      return false;
      break;
    }
  }
  return true;
  }
}