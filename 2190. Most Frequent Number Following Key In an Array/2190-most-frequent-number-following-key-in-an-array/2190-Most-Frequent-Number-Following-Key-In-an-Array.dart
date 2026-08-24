class Solution {
  int mostFrequent(List<int> nums, int key) {
      Map<int, int> mapOfNums = {};


  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] == key) {
      if (mapOfNums.containsKey(
        nums[i + 1 > nums.length ? nums.length - 1 : i + 1],
      )) {
        mapOfNums[nums[i + 1 > nums.length ? nums.length - 1 : i + 1]] =
            mapOfNums[nums[i + 1 > nums.length ? nums.length - 1 : i + 1]]! + 1;
      } else {
        mapOfNums[nums[i + 1 > nums.length ? nums.length - 1 : i + 1]] = 1;
      }
    }
  }

  int maxNum = 0;
  int maxOccer = 0;
  mapOfNums.forEach((key, value) {
    if (value > maxOccer) {
      maxOccer = value;
      maxNum = key;
    }
  });

  return maxNum;

  }
}