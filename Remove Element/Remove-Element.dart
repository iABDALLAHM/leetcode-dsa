1class Solution {
2  int removeElement(List<int> nums, int val) {
3    int k = 0;
4    int pointer2 = 0;
5
6  while (pointer2 < nums.length) {
7    if (nums[pointer2] != val) {
8      nums[k] = nums[pointer2];
9      k++;
10    }
11    pointer2++;
12  }
13  return k;
14  }
15}