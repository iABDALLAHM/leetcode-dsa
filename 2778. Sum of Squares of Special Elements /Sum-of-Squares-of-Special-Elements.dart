1class Solution {
2  int sumOfSquares(List<int> nums) {
3    
4  int finalResult = 0;
5  for (int i = 0; i < nums.length; i++) {
6    if (nums.length % (i + 1) == 0) {
7      finalResult += (nums[i] * nums[i]);
8    }
9  }
10
11 return finalResult;
12  }
13}