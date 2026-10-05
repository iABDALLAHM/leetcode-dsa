class Solution {
  int findClosestNumber(List<int> nums) {
    nums.sort();
  int closestDistance = (nums[0] - 0).abs();
  int closestNumber = nums[0];

  for (int i = 0; i < nums.length; i++) {
    if ((nums[i] - 0).abs() <= closestDistance) {
      closestDistance = (nums[i] - 0).abs();
      closestNumber = nums[i];
    }
  }
  return closestNumber;
  }
}