class Solution {
  int majorityElement(List<int> nums) {
      Map<int, int> numbersMap = {};

  for (int i = 0; i < nums.length; i++) {
    int currentNumber = nums[i];
    if (numbersMap.containsKey(currentNumber)) {
      numbersMap[currentNumber] = numbersMap[currentNumber]! + 1;
    } else {
      numbersMap[currentNumber] = 1;
    }
  }
    int currentNum =0;
  for (int i = 0; i < nums.length; i++) {
     currentNum = nums[i];
    if (numbersMap[currentNum]! >= nums.length / 2) {
      break;
    }
  }
  return currentNum;
  }
}