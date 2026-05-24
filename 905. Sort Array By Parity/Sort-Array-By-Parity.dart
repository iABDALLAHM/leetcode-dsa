1class Solution {
2  List<int> sortArrayByParity(List<int> nums) {
3      int pointer1 = 0;
4        int pointer2 = 0;
5
6    while (pointer2 < nums.length) {
7    if (nums[pointer2] % 2 == 0) {
8      int temp = nums[pointer1];
9      nums[pointer1] = nums[pointer2];
10      nums[pointer2] = temp;
11      pointer1++;
12    }
13    pointer2++;
14  }
15  return nums;
16  }
17}