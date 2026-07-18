class Solution {
  int firstUniqueEven(List<int> nums) {
      Map<int, int> mapOfNums = {};

  for (int i = 0; i < nums.length; i++) {
    int currentElement = nums[i];
    if (mapOfNums.containsKey(currentElement)) {
      mapOfNums[currentElement] = mapOfNums[currentElement]! + 1;
    } else {
      mapOfNums[currentElement] = 1;
    }
  }
  
  int result = -1;
  for (int i = 0; i < nums.length; i++) {
    int currentElement = nums[i];
    if (currentElement % 2 == 0 && mapOfNums[currentElement]! < 2) {
      result = currentElement;
      break;
    }
  }

  print(mapOfNums);
  return result;
  
  }
}