class Solution {
  int sumOfUnique(List<int> nums) {
      Map<int, int> mapOfNums = {};

  for (int i = 0; i < nums.length; i++) {
    int currentKey = nums[i];
    if (mapOfNums.containsKey(currentKey)) {
      mapOfNums[currentKey] = mapOfNums[currentKey]! + 1;
    } else {
      mapOfNums[currentKey] = 1;
    }
  }
  print(mapOfNums);

  int sumOfUniqeElements = 0;
  mapOfNums.forEach((key, value) {
    if (value == 1) {
      sumOfUniqeElements += key;
    }
  });

  print(sumOfUniqeElements);
  return sumOfUniqeElements;
  }
}