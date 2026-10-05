class Solution {
  List<int> intersection(List<List<int>> nums) {
      Map<int, int> mapOfIntersectionEle = {};
  int numOfLists = 0;
  for (int i = 0; i < nums.length; i++) {
    List<int> currentList = nums[i];
    numOfLists++;
    for (int j = 0; j < currentList.length; j++) {
      if (mapOfIntersectionEle.containsKey(currentList[j])) {
        mapOfIntersectionEle[currentList[j]] =
            mapOfIntersectionEle[currentList[j]]! + 1;
      } else {
        mapOfIntersectionEle[currentList[j]] = 1;
      }
    }
  }
  print(mapOfIntersectionEle);
  List<int> result = [];
  mapOfIntersectionEle.forEach((key, value) {
    if (value == numOfLists) {
      result.add(key);
    }
  });
  result.sort();

  return result;

  }
}