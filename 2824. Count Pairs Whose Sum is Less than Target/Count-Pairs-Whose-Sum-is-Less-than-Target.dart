1class Solution {
2  int countPairs(List<int> nums, int target) {
3      int counter = 0;
4  for (int i = 0; i < nums.length; i++) {
5    for (int j = i + 1; j < nums.length; j++) {
6      if (nums[i] + nums[j] < target) {
7        counter++;
8      }
9    }
10  }
11  return counter;
12  }
13}