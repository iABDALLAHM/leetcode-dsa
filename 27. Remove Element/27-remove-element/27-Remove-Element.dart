class Solution {
  int removeElement(List<int> nums, int val) {
  int pointer1 = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[pointer1] = nums[i];
      pointer1++;
    }
  }

  return pointer1;

  }
}