class Solution {
  int findLengthOfLCIS(List<int> nums) {
  int counter = 1;
  int maxCounter = counter;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[i - 1]) {
      counter++;
      if (counter > maxCounter) {
        maxCounter = counter;
      }
    } else {
      counter = 1;
    }
  }
  return maxCounter;

  }
}