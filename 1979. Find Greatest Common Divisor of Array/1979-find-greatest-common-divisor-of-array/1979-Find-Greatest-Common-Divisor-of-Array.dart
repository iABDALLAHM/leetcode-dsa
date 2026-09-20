class Solution {
  int findGCD(List<int> nums) {
      int minNum = 999999;
  int maxNum = 0;
  for (int i = 0; i < nums.length; i++) {
    if (minNum > nums[i]) {
      minNum = nums[i];
    }
    if (nums[i] > maxNum) {
      maxNum = nums[i];
    }
  }
  print(minNum);
  print(maxNum);

  List<int> divisorMinNum = [];
  List<int> divisorMaxNum = [];

  for (int i = 1; i <= minNum; i++) {
    if (minNum % i == 0) {
      divisorMinNum.add(i);
    }
  }
  print(divisorMinNum);
  for (int i = 1; i <= maxNum; i++) {
    if (maxNum % i == 0) {
      divisorMaxNum.add(i);
    }
  }
  print(divisorMaxNum);

  int maxEle = 0;
  for (int i = 0; i < divisorMaxNum.length; i++) {
    if (divisorMinNum.contains(divisorMaxNum[i]) && divisorMaxNum[i] > maxEle) {
      maxEle = divisorMaxNum[i];
    }
  }
  return maxEle;
  }
}