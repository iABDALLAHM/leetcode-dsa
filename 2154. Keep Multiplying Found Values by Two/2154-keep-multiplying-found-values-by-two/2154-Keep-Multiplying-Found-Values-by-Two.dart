class Solution {
  int findFinalValue(List<int> nums, int original) {
    
  Set setOfNums = nums.toSet();

  for (int i = 0; i < setOfNums.length; i++) {
    if (setOfNums.contains(original)) {
      original = 2 * original;
    } else {
      print(original);
      break;
    }
  }
  return original;
  }
}