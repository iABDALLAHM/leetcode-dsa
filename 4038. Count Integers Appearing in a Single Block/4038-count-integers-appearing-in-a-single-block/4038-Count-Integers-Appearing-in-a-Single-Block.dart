class Solution {
  int countSpecialIntegers(List<int> nums) {

  List<int> listOfBlockNums = [];
  listOfBlockNums.add(nums[0]);

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      listOfBlockNums.add(nums[i]);
    }
  }
  print(listOfBlockNums);

  Map<int, int> mapOfSpecialInt = {};

  for (int i = 0; i < listOfBlockNums.length; i++) {
    if (mapOfSpecialInt.containsKey(listOfBlockNums[i])) {
      mapOfSpecialInt[listOfBlockNums[i]] =
          mapOfSpecialInt[listOfBlockNums[i]]! + 1;
    } else {
      mapOfSpecialInt[listOfBlockNums[i]] = 1;
    }
  }
  print(mapOfSpecialInt);

  int numOfSpecialNums = 0;

  mapOfSpecialInt.forEach((key, value) {
    if (value == 1) {
      numOfSpecialNums++;
    }
  });

  return numOfSpecialNums;

  }
}