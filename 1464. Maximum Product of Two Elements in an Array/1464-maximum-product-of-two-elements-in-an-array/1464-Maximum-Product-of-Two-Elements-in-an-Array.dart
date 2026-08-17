class Solution {
  int maxProduct(List<int> nums) {

      int maxNumber = 0;

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if ((nums[i] - 1) * (nums[j] - 1) > maxNumber) {
        maxNumber = ((nums[i] - 1) * (nums[j] - 1));
      }
    }
  }

  return maxNumber;

  }
}