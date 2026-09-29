class Solution {
  bool isGood(List<int> nums) {
      int n = nums.length - 1;

  if (nums.length < 2) {
    return false;
  }

  nums.sort();

  for (int i = 0; i < n; i++) {
    if (nums[i] != i + 1) {
      return false;
    }
  }

  if (nums[n - 1] != n || nums[n] != n) {
    return false;
  }

  return true;
  }

}