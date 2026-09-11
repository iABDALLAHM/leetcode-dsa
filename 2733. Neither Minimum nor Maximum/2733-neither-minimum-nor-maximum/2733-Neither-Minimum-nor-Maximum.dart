class Solution {
  int findNonMinOrMax(List<int> nums) {
    int result = 0;
    if(nums.length<3){
        return -1;
    }

    
  int maxValue = 0;
  int minValue = 9999999999;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > maxValue) {
      maxValue = nums[i];
    }
    if (nums[i] < minValue) {
      minValue = nums[i];
    }
  }

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > minValue && nums[i] < maxValue) {
      result = nums[i];
      break;
    }
  }
    return result;
  }
}