class Solution {
  int subarraySum(List<int> nums) {
      int sumOfEle = 0;

  for (int i = 0; i < nums.length; i++) {
    List<int> currentList = nums.sublist(max(0, i - nums[i]), i + 1);
    int sumOfcurrentList = 0;
    for (int j = 0; j < currentList.length; j++) {
      sumOfcurrentList += currentList[j];
    }
    sumOfEle += sumOfcurrentList;
  }
  return sumOfEle;
  }
}