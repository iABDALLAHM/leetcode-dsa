class Solution {
  List<int> numberOfPairs(List<int> nums) {
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

  int numOfPairs = 0;
  int leftOverNumber = 0;

  mapOfNums.forEach((key, value) {
    numOfPairs += value ~/ 2;
    leftOverNumber += value % 2;
  });
  return [numOfPairs, leftOverNumber]; 
  }
}