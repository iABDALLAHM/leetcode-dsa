class Solution {
  int minMaxGame(List<int> nums) {
    
  while (nums.length > 1) {
    List<int> newNums = List.filled(nums.length ~/ 2, 0);
    for (int i = 0; i < newNums.length; i++) {
      if (i % 2 == 0) {
        newNums[i] = min(nums[2 * i], nums[2 * i + 1]);
      } else {
        newNums[i] = max(nums[2 * i], nums[2 * i + 1]);
      }
    }
    nums = newNums;
  }
  return nums[0];
  }
}