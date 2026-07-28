class Solution {
  int getLeastFrequentDigit(int n) {
      String number = n.toString();

  Map<String, int> mapOfNumber = {};

  for (int i = 0; i < number.length; i++) {
    if (mapOfNumber.containsKey(number[i])) {
      mapOfNumber[number[i]] = mapOfNumber[number[i]]! + 1;
    } else {
      mapOfNumber[number[i]] = 1;
    }
  }
  print(mapOfNumber);

  int minValue = 99999999999999;
  int minNumber = 0;

  mapOfNumber.forEach((key, value) {
    if (value < minValue) {
      minNumber = int.parse(key);
      minValue = value;
    } else if (value == minValue) {
      if (int.parse(key) < minNumber) {
        minNumber = int.parse(key);
        minValue = value;
      }
    }
  });

  return minNumber;
  }
}