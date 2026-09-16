class Solution {
  int minAbsoluteDifference(List<int> nums) {
  int minDiff = 999999999;
  bool hasNums = false;
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (nums[i] == 1 && nums[j] == 2) {
        hasNums = true;
        if (minDiff > (i - j).abs()) {
          minDiff = (i - j).abs();
        }
      }
    }
  }
  return hasNums == true ? minDiff : -1;
  }
}