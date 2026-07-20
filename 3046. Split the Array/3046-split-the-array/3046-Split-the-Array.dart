class Solution {
  bool isPossibleToSplit(List<int> nums) {

  Map<int, int> mapOfNums = {};

  for (int i = 0; i < nums.length; i++) {
    int currentEle = nums[i];
    if (mapOfNums.containsKey(currentEle)) {
      mapOfNums[currentEle] = mapOfNums[currentEle]! + 1;
    } else {
      mapOfNums[currentEle] = 1;
    }
  }

  bool result = true;
  mapOfNums.forEach((key, value) {
    if (value > 2) {
      result = false;
    }
  });

  return result;

  }
}
