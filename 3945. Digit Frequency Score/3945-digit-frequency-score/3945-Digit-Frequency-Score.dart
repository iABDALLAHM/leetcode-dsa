class Solution {
  int digitFrequencyScore(int n) {
      var listOfN = n.toString().split("");

  print(listOfN);

  Map<String, int> mapOfN = {};
  int sumOfResult = 0;

  for (int i = 0; i < listOfN.length; i++) {
    if (mapOfN.containsKey(listOfN[i])) {
      mapOfN[listOfN[i]] = mapOfN[listOfN[i]]! + 1;
    } else {
      mapOfN[listOfN[i]] = 1;
    }
  }
  print(mapOfN);

  mapOfN.forEach((key, value) {
    int temp = int.parse(key) * value;
    sumOfResult += temp;
  });

  return sumOfResult;

  }
}