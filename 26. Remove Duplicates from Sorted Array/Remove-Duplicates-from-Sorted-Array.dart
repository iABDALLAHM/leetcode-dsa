1class Solution {
2  int removeDuplicates(List<int> nums) {
3      int prevElem = 0;
4
5    for (int i = 1; i < nums.length; i++) {
6    if (nums[i] != nums[prevElem]) {
7      prevElem++;
8      nums[prevElem] = nums[i];
9    }
10  }
11
12  return prevElem+1;
13  }
14}