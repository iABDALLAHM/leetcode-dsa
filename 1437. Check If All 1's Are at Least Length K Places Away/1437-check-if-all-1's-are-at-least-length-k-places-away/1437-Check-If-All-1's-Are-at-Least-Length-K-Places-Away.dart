class Solution {
  bool kLengthApart(List<int> nums, int k) {
  bool result = true;
  int lastOneIndex = -1;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 1) {
      if (lastOneIndex != -1) {
        int zerosBetween = i - lastOneIndex - 1;
        if (zerosBetween < k) {
          result = false;
          break;
        }
      }
      lastOneIndex = i;
    }
  }

  return result;
  }
}