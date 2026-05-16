1class Solution {
2  void moveZeroes(List<int> nums) {
3      int pointer1 = 0;
4     int pointer2 = 0;
5     int temp = 0;
6
7  while (pointer2 < nums.length) {
8    if (nums[pointer2] != 0) {
9       temp = nums[pointer1];
10      nums[pointer1] = nums[pointer2];
11      nums[pointer2] = temp;
12      pointer1++;
13    }
14    pointer2++;
15  }
16  }
17}