1class Solution {
2  int minimumSwaps(List<int> nums) {
3    int nonZeroCount = 0;
4
5  for (int i = 0; i < nums.length; i++) {
6    if (nums[i] != 0) {
7      nonZeroCount++;
8    }
9  }
10
11  int zeroCount = 0;
12
13  for (int i = 0; i < nonZeroCount; i++) {
14    if (nums[i] == 0) {
15      zeroCount++;
16    }
17  }
18
19 return zeroCount;
20
21  }
22}