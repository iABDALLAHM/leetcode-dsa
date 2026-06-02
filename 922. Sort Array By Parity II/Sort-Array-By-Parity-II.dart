1class Solution {
2  List<int> sortArrayByParityII(List<int> nums) {
3      List<int> newNums = List.filled(nums.length, 0);
4
5  int pointer1 = 0;
6
7  int pointer2 = 1;
8
9  for (int i = 0; i < nums.length; i++) {
10    if (nums[i] % 2 == 0) {
11      newNums[pointer1] = nums[i];
12      pointer1 += 2;
13    }
14
15    if (nums[i] % 2 != 0) {
16      newNums[pointer2] = nums[i];
17      pointer2 += 2;
18    }
19  }
20
21  return newNums;
22
23
24  }
25}