class Solution {
  bool divideArray(List<int> nums) {
    
  Map<int, int> mapofEle = {};

  for (int i = 0; i < nums.length; i++) {
    int currentKey = nums[i];
    if (mapofEle.containsKey(currentKey)) {
      mapofEle[currentKey] = mapofEle[currentKey]! + 1;
    } else {
      mapofEle[currentKey] = 1;
    }
  }
  print(mapofEle);

  for (var value in mapofEle.values) {
    if (value % 2 != 0) {
      return false;
    }
  }
  return true;
  }
}