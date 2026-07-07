class Solution {
  bool containsDuplicate(List<int> nums) {
    
  Map<int, bool> numbersMap = {};

  for (int i = 0; i < nums.length; i++) {
    int currentNumber = nums[i];
    if (numbersMap.containsKey(currentNumber)) {
      numbersMap[currentNumber] = true;
    } else {
      numbersMap[currentNumber] = false;
    }
  }

  for (int i = 0; i < nums.length; i++) {
    int currentNumber = nums[i];
    if (numbersMap[currentNumber] == true)  {
      return true;
      break;
    } 
  }

 return false;

  }
}
