class Solution {
  bool canAliceWin(List<int> nums) {
    
  int numbersOfAlice = 0;
  int numbersOfBob = 0;

  for (int i = 0; i < nums.length; i++) {
    int currentNum = (nums[i]).abs().toString().length;

    if (currentNum < 2) {
      numbersOfAlice += nums[i];
    } else {
      numbersOfBob += nums[i];
    }
  }
  return numbersOfBob != numbersOfAlice ? true : false;
  }
}