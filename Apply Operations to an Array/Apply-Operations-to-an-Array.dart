1class Solution {
2  List<int> applyOperations(List<int> nums) {
3      for (int i = 0; i < nums.length - 1; i++) {
4    int pointer1 = i + 1;
5    if (nums[i] == nums[pointer1]) {
6      nums[i] = 2 * nums[i];
7      nums[pointer1] = 0;
8    }
9    pointer1++;
10  }
11
12  int pointer1 = 0;
13  int pointer2 = 0;
14
15  while (pointer2 < nums.length) {
16    if (nums[pointer2] != 0) {
17      int temp = nums[pointer1];
18      nums[pointer1] = nums[pointer2];
19      nums[pointer2] = temp;
20      pointer1++;
21    }
22    pointer2++;
23  }
24return nums;
25  }
26}