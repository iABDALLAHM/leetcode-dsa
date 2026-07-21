class Solution {
  int distinctAverages(List<int> nums) {
      nums.sort();

  Set setOfNums = {};

  while (nums.isNotEmpty) {
    int minValuePointer = nums[0];
    int maxValuePointer = nums[0];

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > minValuePointer) {
        minValuePointer = nums[i];
      }
      if (nums[i] < maxValuePointer) {
        maxValuePointer = nums[i];
      }
    }

    double average = (minValuePointer + maxValuePointer) / 2;

    print(average);

    setOfNums.add(average);

    nums.remove(minValuePointer);
    nums.remove(maxValuePointer);
    print(nums);
  }

  return setOfNums.length;
  }
}