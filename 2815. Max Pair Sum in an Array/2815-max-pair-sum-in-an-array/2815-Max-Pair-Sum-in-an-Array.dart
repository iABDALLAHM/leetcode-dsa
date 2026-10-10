class Solution {
  int maxSum(List<int> nums) {
    
  Map<int, List<int>> mapOfElements = {};

  for (int i = 0; i < nums.length; i++) {
    int currentNum = nums[i];
    int currentMaxDigit = 0;

    while (currentNum > 0) {
      int currentDigit = currentNum % 10;
      if (currentDigit > currentMaxDigit) {
        currentMaxDigit = currentDigit;
      }
      currentNum = currentNum ~/ 10;
    }

    mapOfElements.putIfAbsent(currentMaxDigit, () => []).add(nums[i]);
  }

  int sumOfEle = -1;

  int lastSum = 0;
  mapOfElements.forEach((key, value) {
    int currentSum = 0;
    if (value.length >= 2) {
      List<int> currentList = value;
      currentList.sort();
      currentSum += currentList[currentList.length - 1];
      currentSum += currentList[currentList.length - 2];
    }
    if (currentSum > lastSum) {
      lastSum = currentSum;
    }
  });

  return lastSum > 0 ? lastSum : sumOfEle;

  }
}