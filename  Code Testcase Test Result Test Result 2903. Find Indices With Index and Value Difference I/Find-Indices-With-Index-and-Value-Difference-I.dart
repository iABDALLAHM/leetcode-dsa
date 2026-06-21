1class Solution {
2  List<int> findIndices(List<int> nums, int indexDifference, int valueDifference) {
3
4  for (int i = 0; i < nums.length; i++) {
5    for (int j = 0; j < nums.length; j++) {
6      if ((i - j).abs() >= indexDifference &&
7          (nums[i] - nums[j]).abs() >= valueDifference) {
8        return [i,j];
9      }
10    }
11  }
12    return [-1,-1];
13  }
14}