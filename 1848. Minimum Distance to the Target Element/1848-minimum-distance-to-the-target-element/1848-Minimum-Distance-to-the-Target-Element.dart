class Solution {
  int getMinDistance(List<int> nums, int target, int start) {
      int minimumValue = 999999;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      if ((i - start).abs() < minimumValue) {
        minimumValue = (i - start).abs();
      }
    }
  }

  return minimumValue;

  }
}