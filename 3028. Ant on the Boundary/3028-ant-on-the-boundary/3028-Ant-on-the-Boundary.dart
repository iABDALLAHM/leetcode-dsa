class Solution {
  int returnToBoundaryCount(List<int> nums) {
      int position = nums[0];

  int numOfTimesReturned = 0;

  for (int i = 1; i < nums.length; i++) {
    position += nums[i];
    if (position == 0) {
      numOfTimesReturned++;
    }
  }

  return numOfTimesReturned;

  }
}