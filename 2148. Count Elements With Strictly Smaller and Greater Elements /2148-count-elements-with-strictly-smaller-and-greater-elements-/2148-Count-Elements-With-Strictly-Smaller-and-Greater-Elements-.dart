class Solution {
  int countElements(List<int> nums) {
      int numOfStriclyEle = 0;

  for (int i = 0; i < nums.length; i++) {
    bool greaterThanEle = false;
    bool smallerThanEle = false;
    int currentNum = nums[i];
    for (int j = 0; j < nums.length; j++) {
      if (nums[j] > currentNum) {
        greaterThanEle = true;
      } else if (nums[j] < currentNum) {
        smallerThanEle = true;
      }
    }
    if (greaterThanEle == true && smallerThanEle == true) {
      numOfStriclyEle++;
    }
  }
  return numOfStriclyEle;
  }
}