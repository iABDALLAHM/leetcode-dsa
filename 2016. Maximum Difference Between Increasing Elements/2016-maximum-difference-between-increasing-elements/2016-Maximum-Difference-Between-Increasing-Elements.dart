class Solution {
  int maximumDifference(List<int> nums) {
    
  int minValue =nums[0];
  int maxDiff = -1;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < minValue) {
      minValue = nums[i];
    }

    if (nums[i] > minValue) {
      if (maxDiff < (nums[i] - minValue)) {
        maxDiff = (nums[i] - minValue);
      }
    }
  }

  return maxDiff;

  }
}