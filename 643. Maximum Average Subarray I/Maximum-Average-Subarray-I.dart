1class Solution {
2  double findMaxAverage(List<int> nums, int k) {
3    int windowSum = 0;
4
5  for (int i = 0; i < k; i++) {
6    windowSum += nums[i];
7  }
8
9  int maxWindow = windowSum;
10
11  for (int i = k; i < nums.length; i++) {
12    windowSum += nums[i];
13    windowSum -= nums[i - k];
14
15    if (windowSum > maxWindow) {
16      maxWindow = windowSum;
17    }
18  }
19  return maxWindow / k;
20  }
21}