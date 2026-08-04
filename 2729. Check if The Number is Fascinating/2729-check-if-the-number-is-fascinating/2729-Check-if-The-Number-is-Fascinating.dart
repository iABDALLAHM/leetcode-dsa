class Solution {
  bool isFascinating(int n) {
      String stringNum = n.toString();
  String result = stringNum;

  for (int i = 2; i <= 3; i++) {
    int newNum = i * n;
    String newStringNum = newNum.toString();
    result += newStringNum;
  }
  print(result);

  Map<String, int> mapOfNumbers = {};

  for (int i = 0; i < result.length; i++) {
    String currentEle = result[i];
    if (mapOfNumbers.containsKey(currentEle)) {
      mapOfNumbers[currentEle] = mapOfNumbers[currentEle]! + 1;
    } else {
      mapOfNumbers[currentEle] = 1;
    }
  }
  print(mapOfNumbers);
  bool finalResult = true;

  for (var element in mapOfNumbers.entries) {
    if (int.parse(element.key) == 0) {
      finalResult = false;
      break;
    }
    if (element.value > 1) {
      finalResult = false;
      break;
    }
  }

  return finalResult;

  }
}