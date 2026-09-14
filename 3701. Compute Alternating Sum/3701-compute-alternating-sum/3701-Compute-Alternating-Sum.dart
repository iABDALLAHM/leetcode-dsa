class Solution {
  int alternatingSum(List<int> nums) {
      int sumOfElements = 0;

  for (int i = 0; i < nums.length; i++) {
    if (i % 2 == 0) {
      sumOfElements += nums[i];
    } else {
      sumOfElements -= nums[i];
    }
  }

  return sumOfElements;

  }
}