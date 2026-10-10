class Solution {
  int numberOfPoints(List<List<int>> nums) {
      Set<int> coverdPoints = {};

  for (int i = 0; i < nums.length; i++) {
    List<int> currentList = nums[i];
    for (int j = currentList[0]; j <= currentList[currentList.length - 1]; j++) {
      coverdPoints.add(j);
    }
  }
  return coverdPoints.length;
  }
}