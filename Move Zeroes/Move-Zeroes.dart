1class Solution {
2  void moveZeroes(List<int> nums) {
3      int pointer1 = 0;
4  for (int i = 0; i < nums.length; i++) {
5    if (nums[i] != 0) {
6      nums[pointer1] = nums[i];
7      pointer1++;
8    }
9  }
10
11  for (int i = pointer1; i < nums.length; i++) {
12    nums[i] = 0;
13  }
14  }
15}