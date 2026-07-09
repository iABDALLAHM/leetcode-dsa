class Solution {
  int missingNumber(List<int> nums) {
      nums.sort();

  Set<int> set = {};

  for (int i = 0; i < nums.length; i++) {
    set.add(nums[i]);
  }

  int result = nums.length;
  for (int i = 0; i < nums.length; i++) {
    if (!set.contains(i)) {
      result = i;
    }
  }

  return result;

  }
}