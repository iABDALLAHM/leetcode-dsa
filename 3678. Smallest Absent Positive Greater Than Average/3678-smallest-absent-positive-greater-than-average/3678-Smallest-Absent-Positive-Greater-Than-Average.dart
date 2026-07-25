class Solution {
  int smallestAbsent(List<int> nums) {
    

  int total = 0;
  for (int i = 0; i < nums.length; i++) {
    total += nums[i];
  }

  double average = total / nums.length;

  Set<int> setNums = nums.toSet();

  int result = average.floor() + 1;
  if (result < 1) {
    result = 1;
  }

  for (int i = 0; i < setNums.length; i++) {
    if (!setNums.contains(result)) {
      result = result;
      break;
    }
    result++;
  }

  return result;
  }
}
