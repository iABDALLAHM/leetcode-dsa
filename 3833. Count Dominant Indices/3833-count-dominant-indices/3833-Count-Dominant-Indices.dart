class Solution {
  int dominantIndices(List<int> nums) {
  int result = 0;

  for (int i = 0; i < nums.length; i++) {
    int numOfAfterElements = 0;
    int sumOfAfterElements = 0;
    for (int j = i + 1; j < nums.length; j++) {
      numOfAfterElements++;
      sumOfAfterElements += nums[j];
    }
    if (nums[i] > (sumOfAfterElements / numOfAfterElements)) {
      result++;
    }
  }

  return result;

  }
}