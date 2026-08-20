class Solution {
  List<List<int>> mergeArrays(List<List<int>> nums1, List<List<int>> nums2) {
      Map<int, int> mapOfUniqeNums = {};

  for (int i = 0; i < nums1.length; i++) {
    List<int> currentList = nums1[i];
    int currentKey = currentList[0];
    if (mapOfUniqeNums.containsKey(currentKey)) {
      mapOfUniqeNums[currentKey] =
          mapOfUniqeNums[currentKey]! + currentList[currentList.length - 1];
    } else {
      mapOfUniqeNums[currentKey] = currentList[currentList.length - 1];
    }
  }

  print(mapOfUniqeNums);

  for (int i = 0; i < nums2.length; i++) {
    List<int> currentList = nums2[i];
    int currentKey = currentList[0];
    if (mapOfUniqeNums.containsKey(currentKey)) {
      mapOfUniqeNums[currentKey] =
          mapOfUniqeNums[currentKey]! + currentList[currentList.length - 1];
    } else {
      mapOfUniqeNums[currentKey] = currentList[currentList.length - 1];
    }
  }
  print(mapOfUniqeNums);

  var sortedKeys = mapOfUniqeNums.keys.toList()..sort();
  print(sortedKeys);

  Map<int, int> sortedMapAfter = Map.fromEntries(
    sortedKeys.map((key) => MapEntry(key, mapOfUniqeNums[key]!)),
  );

  List<List<int>> result = [];

  sortedMapAfter.forEach((key, value) {
    result.add([key, value]);
  });

  return result;

  }
}