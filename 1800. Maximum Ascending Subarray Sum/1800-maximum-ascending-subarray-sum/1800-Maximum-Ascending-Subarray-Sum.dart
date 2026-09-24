class Solution {
  int maxAscendingSum(List<int> nums) {
      int currentSum = nums[0];
  int maxSum = nums[0];

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[i - 1]) {
      currentSum += nums[i];
      if (currentSum > maxSum) {
        maxSum = currentSum;
      }
    } else {
      currentSum = nums[i];
    }
  }
  return maxSum;
  }
}