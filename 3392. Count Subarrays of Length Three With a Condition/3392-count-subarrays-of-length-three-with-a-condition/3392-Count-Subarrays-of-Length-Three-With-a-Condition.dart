class Solution {
  int countSubarrays(List<int> nums) {
    
  int numOfSubArrays = 0;

  for (int i = 0; i < nums.length - 2; i++) {
    List<int> currentList = nums.sublist(i, i + 3);
    if ((currentList[0] + currentList[2]) == currentList[1] / 2) {
      numOfSubArrays++;
    }
  }

  return numOfSubArrays;

  }
}