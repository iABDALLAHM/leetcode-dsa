class Solution {
  int smallestIndex(List<int> nums) {

  for (int i = 0; i < nums.length; i++) {
    if (getDigitSum(nums[i]) == i) {
      return i;
    }
  }
  return -1;
  }

  int getDigitSum(int n) {
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n = n ~/ 10;
  }
  return sum;
}
}