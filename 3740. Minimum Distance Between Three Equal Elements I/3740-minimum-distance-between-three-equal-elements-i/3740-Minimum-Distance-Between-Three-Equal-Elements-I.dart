class Solution {
  int minimumDistance(List<int> nums) {
  Map<int, List<int>> mapOfEqualElements = {};

  int minimumDistance = -1;

  for (int i = 0; i < nums.length; i++) {
    int currentElement = nums[i];
    mapOfEqualElements.putIfAbsent(currentElement, () => []).add(i);
  }
  print(mapOfEqualElements);

  for (var currentList in mapOfEqualElements.values) {
    if (currentList.length >= 3) {
      for (int i = 0; i <= currentList.length - 3; i++) {
        int currentDistance =
            (currentList[i] - currentList[i + 1]).abs() +
            (currentList[i + 1] - currentList[i + 2]).abs() +
            (currentList[i + 2] - currentList[i]).abs();
        if (minimumDistance == -1 || currentDistance < minimumDistance) {
          minimumDistance = currentDistance;
        }
      }
    }
  }

  return minimumDistance;

  }
}