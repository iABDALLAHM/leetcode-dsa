class Solution {
  List<List<int>> mergeSimilarItems(List<List<int>> items1, List<List<int>> items2) {
     Map<int, int> mapOfValueAndWeight = {};

  for (int i = 0; i < items1.length; i++) {
    List<int> currentList = items1[i];
    int value = currentList[0];
    int weight = currentList[1];
    if (mapOfValueAndWeight.containsKey(value)) {
      mapOfValueAndWeight[value] = mapOfValueAndWeight[value]! + weight;
    } else {
      mapOfValueAndWeight[value] = weight;
    }
  }

  print(mapOfValueAndWeight);

  for (int i = 0; i < items2.length; i++) {
    List<int> currentList = items2[i];
    int value = currentList[0];
    int weight = currentList[1];
    if (mapOfValueAndWeight.containsKey(value)) {
      mapOfValueAndWeight[value] = mapOfValueAndWeight[value]! + weight;
    } else {
      mapOfValueAndWeight[value] = weight;
    }
  }

  List<int> sortedKeys = mapOfValueAndWeight.keys.toList()..sort();

  List<List<int>> result = [];

  for (var key in sortedKeys) {
    result.add([key, mapOfValueAndWeight[key]!]);
  }

  return result;

  }
}