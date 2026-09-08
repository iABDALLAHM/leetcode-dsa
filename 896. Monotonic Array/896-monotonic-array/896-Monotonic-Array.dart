class Solution {
  bool isMonotonic(List<int> nums) {
    bool isIncresing = true;
  bool isDecresing = true;

  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] > nums[i + 1]) {
      isIncresing = false;
    } else if (nums[i] < nums[i + 1]) {
      isDecresing = false;
    }
  }

  return isDecresing || isIncresing;

  }
}