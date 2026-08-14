class Solution {
  int dominantIndex(List<int> nums) {
    
  int maxEle = 0;
  int indexOfMaxEle = -1;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > maxEle) {
      maxEle = nums[i];
      indexOfMaxEle = i;
    }
  }

  bool isMaxThanUniqe = false;

  for (int i = 0; i < nums.length; i++) {
    if (i == indexOfMaxEle) {
      continue;
    }
    if (maxEle < (nums[i] * 2)) {
      isMaxThanUniqe = true;
      break;
    }
  }

  return isMaxThanUniqe == false ? indexOfMaxEle : -1;

  }
}
