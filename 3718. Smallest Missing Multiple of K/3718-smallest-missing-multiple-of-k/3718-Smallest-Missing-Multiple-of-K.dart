class Solution {
  int missingMultiple(List<int> nums, int k) {
      int target = k;

  for (int i = 0; i < nums.length; i++) {
    if (nums.contains(target)) {
      target += k;
    } else {
      print(target);
      break;
    }
  }
  return target;
  }
}