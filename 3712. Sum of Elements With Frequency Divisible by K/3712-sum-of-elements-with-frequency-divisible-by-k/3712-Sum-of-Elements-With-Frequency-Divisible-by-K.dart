class Solution {
  int sumDivisibleByK(List<int> nums, int k) {
  Map<int, int> mapOfNums = {};
  for (int i = 0; i < nums.length; i++) {
    int currentEle = nums[i];
    if (mapOfNums.containsKey(currentEle)) {
      mapOfNums[currentEle] = mapOfNums[currentEle]! + 1;
    } else {
      mapOfNums[currentEle] = 1;
    }
  }

  int sumOfNumbers = 0;
  for (var element in nums) {
    int occerOfNum = mapOfNums[element]!;
    if (occerOfNum % k == 0) {
      sumOfNumbers += element;
    }
  }

  return sumOfNumbers;

  }
}