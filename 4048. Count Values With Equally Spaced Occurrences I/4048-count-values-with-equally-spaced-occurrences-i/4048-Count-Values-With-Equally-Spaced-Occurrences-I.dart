class Solution {
  int countSpecialIntegers(List<int> nums) {
     int numOfSpecialInt = 0;

  Map<int, List<int>> mapOfSpecialInt = {};

  for (int i = 0; i < nums.length; i++) {
    mapOfSpecialInt.putIfAbsent(nums[i], () => []).add(i);
  }
  print(mapOfSpecialInt);

  for (var value in mapOfSpecialInt.values) {
    if (value.length == 3) {
      int diff1 = value[1] - value[0];
      int diff2 = value[2] - value[1];
      if (diff1 == diff2) {
        numOfSpecialInt++;
      }
    }
  }
  print(numOfSpecialInt);
  return numOfSpecialInt;
  }
}