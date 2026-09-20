class Solution {
  int smallestEqual(List<int> nums) {
  int minIndex = 999999;
  for (int i = 0; i < nums.length; i++) {
    if (i % 10 == nums[i]) {
      if (i < minIndex) {
        minIndex = i;
      }
    }
  }
  return minIndex == 999999 ? -1 : minIndex;

  }
}