class Solution {
  int minOperations(List<int> nums, int k) {
    
  Set<int> setOfNumbers = {};
  int numOfOperations = 0;
  for (int i = nums.length - 1; i >= 0; i--) {
    numOfOperations++;
    if (nums[i] <= k) {
      setOfNumbers.add(nums[i]);
    }

    if (setOfNumbers.length == k) {
      break;
    }
  }
    return numOfOperations;
  }
}