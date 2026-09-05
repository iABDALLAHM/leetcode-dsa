class Solution {
  void moveZeroes(List<int> nums) {
      int pointer1 = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[pointer1] = nums[i];
      pointer1++;
    }
  }
  for (int i = pointer1; i < nums.length; i++) {
    nums[i] = 0;
  }

  }
}