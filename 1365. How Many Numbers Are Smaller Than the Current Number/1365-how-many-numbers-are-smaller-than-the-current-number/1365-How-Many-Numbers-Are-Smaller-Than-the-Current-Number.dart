class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
      List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    int counterOfSmallerCurrentNumber = 0;
    for (int j = 0; j < nums.length; j++) {
      if (nums[j] < nums[i]) {
        counterOfSmallerCurrentNumber++;
      }
    }
    result.add(counterOfSmallerCurrentNumber);
  }

  return result;

  }
}