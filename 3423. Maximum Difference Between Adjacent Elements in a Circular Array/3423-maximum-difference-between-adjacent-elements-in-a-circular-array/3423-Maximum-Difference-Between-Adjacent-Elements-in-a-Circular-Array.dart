class Solution {
  int maxAdjacentDistance(List<int> nums) {
  int maxDiff = (nums[0] - nums[nums.length - 1]).abs();

  for (int i = 1; i < nums.length; i++) {
    int currentDiff = (nums[i - 1] - nums[i]).abs();
    if (maxDiff < currentDiff) {
      maxDiff = currentDiff;
    }
  }

  return maxDiff;
  }
}