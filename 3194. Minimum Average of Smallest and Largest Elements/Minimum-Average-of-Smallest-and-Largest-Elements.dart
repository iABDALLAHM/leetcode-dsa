1class Solution {
2  double minimumAverage(List<int> nums) {
3      List<double> averages = [];
4
5    while (nums.length > 0) {
6    int minEle = nums[0];
7    int maxEle = nums[0];
8
9    for (int j = 0; j < nums.length; j++) {
10      if (nums[j] > maxEle) maxEle = nums[j];
11      if (nums[j] < minEle) minEle = nums[j];
12    }
13
14    double average = (maxEle + minEle) / 2.0;
15
16    averages.add(average);
17
18    nums.remove(minEle);
19    nums.remove(maxEle);
20  }
21
22
23  double minAverage = averages[0];
24
25  for (int i = 0; i < averages.length; i++) {
26    if (averages[i] < minAverage) {
27      minAverage = averages[i];
28    }
29  }
30
31  return minAverage;
32  }
33}