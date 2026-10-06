class Solution {
  List<int> getFinalState(List<int> nums, int k, int multiplier) {
      while (k > 0) {
    int minValue = nums[0];
    int minIndex = 0;
    print(nums);
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] < minValue) {
        minIndex = i;
        minValue = nums[i];
      } else if (minValue == nums[i]) {
        if (i < minIndex) {
          minIndex = i;
        }
      }
    }

    nums[minIndex] *= multiplier;
    k--;
  }
  return nums;
  }
}