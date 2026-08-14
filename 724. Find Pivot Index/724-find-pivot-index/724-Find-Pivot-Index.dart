class Solution {
  int pivotIndex(List<int> nums) {
      int thePivotIndex = -1;

  for (int i = 0; i < nums.length; i++) {
    thePivotIndex = i;

    int leftIndexSum = 0;
    for (int j = 0; j < i; j++) {
      leftIndexSum += nums[j];
    }

    int rightIndexSum = 0;
    for (int k = i + 1; k < nums.length; k++) {
      rightIndexSum += nums[k];
    }

    if (leftIndexSum == rightIndexSum) {
      print("leftIndexSum:$leftIndexSum");
      print("rightIndexSum:$rightIndexSum");
      break;
    } else {
      thePivotIndex = -1;
    }
  }
  return thePivotIndex;
  }
}