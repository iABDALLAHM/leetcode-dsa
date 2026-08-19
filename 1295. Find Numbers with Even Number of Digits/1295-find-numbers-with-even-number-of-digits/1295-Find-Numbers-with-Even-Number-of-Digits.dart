class Solution {
  int findNumbers(List<int> nums) {
      List<String> stringNums = [];
  for (int i = 0; i < nums.length; i++) {
    stringNums.add(nums[i].toString());
  }
  print(stringNums);
  int numOfEvenNums = 0;

  for (int i = 0; i < stringNums.length; i++) {
    if (stringNums[i].length % 2 == 0) {
      numOfEvenNums++;
    }
  }
  return numOfEvenNums;
  }
}