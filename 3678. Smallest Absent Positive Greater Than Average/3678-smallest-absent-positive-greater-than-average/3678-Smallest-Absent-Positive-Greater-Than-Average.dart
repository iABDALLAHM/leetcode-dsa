class Solution {
  int smallestAbsent(List<int> nums) {
    

  int total = 0;
  for (int i = 0; i < nums.length; i++) {
    total += nums[i];
  }

  double average = total / nums.length;

  int result = average.floor() + 1;
  if (result < 1) {
    result = 1;
  }

  for (int i = 0; i < nums.length; i++) {
    if (!nums.contains(result)) {
      result = result;
      break;
    }
    result++;
  }

  return result;
  }
}
