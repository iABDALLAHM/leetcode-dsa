class Solution {
  int maximizeSum(List<int> nums, int k) {
    
  nums.sort();
  int numOfOperations = 0;

  int maxScore = 0;

  while (numOfOperations < k) {
    numOfOperations++;

    maxScore += nums[nums.length - 1];
    nums[nums.length - 1] = nums[nums.length - 1] + 1;
  }
  return maxScore;
  }
}