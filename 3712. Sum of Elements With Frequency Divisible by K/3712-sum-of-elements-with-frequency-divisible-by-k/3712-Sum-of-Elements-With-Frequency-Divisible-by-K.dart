class Solution {
  int sumDivisibleByK(List<int> nums, int k) {
      List<int> listOfSumNumbers = [];

  Map<int, int> mapOfNums = {};
  for (int i = 0; i < nums.length; i++) {
    int currentEle = nums[i];
    if (mapOfNums.containsKey(currentEle)) {
      mapOfNums[currentEle] = mapOfNums[currentEle]! + 1;
    } else {
      mapOfNums[currentEle] = 1;
    }
  }

  for (var element in nums) {
    int occerOfNum = mapOfNums[element]!;
    if (occerOfNum % k == 0) {
      listOfSumNumbers.add(element);
    }
  }

  int sumOfNumbers = 0;
  for (int i = 0; i < listOfSumNumbers.length; i++) {
    sumOfNumbers += listOfSumNumbers[i];
  }

  return sumOfNumbers;

  }
}