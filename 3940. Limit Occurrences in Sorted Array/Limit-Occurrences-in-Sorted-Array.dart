1class Solution {
2  List<int> limitOccurrences(List<int> nums, int k) {
3    int currentCount = 0;
4    int prevEle = nums[0];
5
6    List<int> result = [];
7
8 for (int i = 0; i < nums.length; i++) {
9    if (prevEle == nums[i]) {
10      if (currentCount < k) {
11        result.add(nums[i]);
12        currentCount++;
13      }
14    } else {
15      currentCount = 1;
16      result.add(nums[i]);
17      prevEle = nums[i];
18    }
19  }
20
21  return result;
22  }
23}