class Solution {
  int findLucky(List<int> arr) {
  Map<int, int> mapOfArr = {};

  for (int i = 0; i < arr.length; i++) {
    int currentKey = arr[i];
    if (mapOfArr.containsKey(currentKey)) {
      mapOfArr[currentKey] = mapOfArr[currentKey]! + 1;
    } else {
      mapOfArr[currentKey] = 1;
    }
  }
  print(mapOfArr);

  int result = -1;
  int maxKey = 0;
  mapOfArr.forEach((key, value) {
    if (key == value && key > maxKey) {
      result = key;
      maxKey = key;
    }
  });

  return result;
  }
}