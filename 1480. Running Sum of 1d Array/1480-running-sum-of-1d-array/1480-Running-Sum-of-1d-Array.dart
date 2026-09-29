class Solution {
  List<int> runningSum(List<int> nums) {
      List<int> result = List.filled(nums.length, 0);
  int sumOfAllLastElements = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j <= i; j++) {
      sumOfAllLastElements += nums[j];
    }
    result[i] = sumOfAllLastElements;
    sumOfAllLastElements = 0;
  }

  return result;

  }
}