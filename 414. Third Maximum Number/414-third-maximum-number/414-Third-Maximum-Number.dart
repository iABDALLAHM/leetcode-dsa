class Solution {
  int thirdMax(List<int> nums) {
  nums.sort();
  List<int> newNums = [];

  for (int i = 0; i < nums.length; i++) {
    if (!newNums.contains(nums[i])) {
      newNums.add(nums[i]);
    }
  }

  int maxResult = 0;
  if (newNums.length >= 3) {
    maxResult = newNums[newNums.length - 3];
  } else if (newNums.length <= 2) {
    for (var num in newNums) {
      if (num > maxResult) {
        maxResult = num;
      }
    }
  }
  return maxResult;
  }
}