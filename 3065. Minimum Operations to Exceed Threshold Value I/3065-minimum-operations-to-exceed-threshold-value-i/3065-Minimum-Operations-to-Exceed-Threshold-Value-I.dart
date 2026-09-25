class Solution {
  int minOperations(List<int> nums, int k) {
    
  int numOfEleSmallerThanK = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < k) {
      numOfEleSmallerThanK++;
    }
  }
  return numOfEleSmallerThanK;
  }
}