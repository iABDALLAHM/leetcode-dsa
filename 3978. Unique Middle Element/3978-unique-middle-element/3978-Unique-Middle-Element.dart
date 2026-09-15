class Solution {
  bool isMiddleElementUnique(List<int> nums) {
     Map<int, int> mapOfNums = {};

  int middleElement = nums.length ~/ 2;
  print(middleElement);

  for (int i = 0; i < nums.length; i++) {
    if (mapOfNums.containsKey(nums[i])) {
      mapOfNums[nums[i]] = mapOfNums[nums[i]]! + 1;
    } else {
      mapOfNums[nums[i]] = 1;
    }
  }
  print(mapOfNums);

  if (mapOfNums[nums[middleElement]]! > 1) {
    return false;
  } else {
    return true;
  } 
  }
}