class Solution {
  int repeatedNTimes(List<int> nums) {
      Map<int, int> mapOfNums = {};

  for (int i = 0; i < nums.length; i++) {
    int currentEle = nums[i];
    if (mapOfNums.containsKey(currentEle)) {
      mapOfNums[currentEle] = mapOfNums[currentEle]! + 1;
    } else {
      mapOfNums[currentEle] = 1;
    }
  }
  print(mapOfNums);

  int maxKey = 0;
  int maxIterate = 0;
  mapOfNums.forEach((key, value) {
    if (value > maxIterate) {
      maxIterate = value;
      maxKey = key;
    }
  });

  return maxKey;

  }
}