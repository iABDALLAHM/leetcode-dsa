class Solution {
  int maxDigitRange(List<int> nums) {
  List<int> ranges = List.filled(nums.length, 0);

  for (int i = 0; i < nums.length; i++) {
    int currentNum = nums[i];

    int maxNum = 0;
    int minNum = currentNum;
    while (currentNum > 0) {
      int sum = 0;
      sum = currentNum % 10;
      if (sum > maxNum) {
        maxNum = sum;
      }
      if (sum < minNum) {
        minNum = sum;
      }
      currentNum = currentNum ~/ 10;
    }
    ranges[i] = (maxNum - minNum);
  }
  int maxDigitRange = ranges[0];
  print(ranges);

  for (int i = 0; i < ranges.length; i++) {
    if (ranges[i] >= maxDigitRange) {
      maxDigitRange = ranges[i];
    }
  }

  Map<int, int> mapOfDigitRanges = {};

  for (int i = 0; i < nums.length; i++) {
    if (mapOfDigitRanges.containsKey(ranges[i])) {
      mapOfDigitRanges[ranges[i]] = mapOfDigitRanges[ranges[i]]! + nums[i];
    } else {
      mapOfDigitRanges[ranges[i]] = nums[i];
    }
  }
  return mapOfDigitRanges[maxDigitRange]??0;
  }
}