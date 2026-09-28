class Solution {
  int averageValue(List<int> nums) {

  int numOfEven = 0;
  int length = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 6 == 0) {
      numOfEven += nums[i];
      length++;
    }
  }

  if (length == 0) {
    return 0;
  }

 return numOfEven ~/ length;

  }
}