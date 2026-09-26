class Solution {
  int firstStableIndex(List<int> nums, int k) {


  for (int i = 0; i < nums.length; i++) {
    int maxValue = nums[0];
    for (int j = 0; j <= i; j++) {
      maxValue = max(maxValue, nums[j]);
    }

    int minValue = nums[i];
    for (int x = i; x < nums.length; x++) {
      minValue = min(minValue, nums[x]);
    }

    if ((maxValue - minValue) <= k) {
      return i;
      break;
    }
  }

  return -1;

  }
}