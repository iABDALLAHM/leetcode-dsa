class Solution {
  int findMiddleIndex(List<int> nums) {
      int leftSum = 0;
  int rightSum = 0;
  int middleIndex = -1;

  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (j > i) {
        rightSum += nums[j];
        print("rightSumNow $rightSum in ${nums[i]}");
      } else if (j < i) {
        leftSum += nums[j];
        print("leftSumNow $leftSum in ${nums[i]}");
      }
    }
    if (leftSum == rightSum) {
      middleIndex = i;
      break;
    } else {
      leftSum = 0;
      rightSum = 0;
    }
  }
  return middleIndex;
  }
}