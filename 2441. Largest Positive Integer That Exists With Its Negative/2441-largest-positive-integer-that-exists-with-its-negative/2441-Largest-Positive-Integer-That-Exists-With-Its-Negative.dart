class Solution {
  int findMaxK(List<int> nums) {
  Set<int> setOfPositive = {};
  Set<int> setOfNegative = {};

  int result = -1;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > 0) {
      setOfPositive.add(nums[i]);
    } else {
      setOfNegative.add(nums[i]);
    }
  }
  print(setOfPositive);
  print(setOfNegative);

  for (var element in setOfPositive) {
    if (setOfPositive.contains(element) &&
        setOfNegative.contains(-element) &&
        element > result) {
      result = element;
    }
  }

  return result;

  }
}