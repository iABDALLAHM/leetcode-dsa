class Solution {
  int minMoves(List<int> nums) {
    
  int maxEle = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > maxEle) {
      maxEle = nums[i];
    }
  }
  print(maxEle);
  int numOfMoves = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != maxEle) {
      numOfMoves += (maxEle - nums[i]);
    }
  }

  return numOfMoves;

  }
}