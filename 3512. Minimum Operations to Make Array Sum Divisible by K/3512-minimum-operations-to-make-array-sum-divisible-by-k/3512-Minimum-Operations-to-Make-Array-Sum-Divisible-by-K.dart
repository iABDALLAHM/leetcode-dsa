class Solution {
  int minOperations(List<int> nums, int k) {
    
  int sumOfElements = 0;

  int numOfOperations = 0;

  for (int i = 0; i < nums.length; i++) {
    sumOfElements += nums[i];
  }

  while (sumOfElements % k != 0) {
    sumOfElements--;
    numOfOperations++;
  }
  return numOfOperations;
  }
}