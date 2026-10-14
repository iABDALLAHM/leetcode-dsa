class Solution {
  int countQuadruplets(List<int> nums) {
      int numOfQuadruplets = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        for (int x = k + 1; x < nums.length; x++) {
          if (nums[i] + nums[j] + nums[k] == nums[x]) {
            numOfQuadruplets++;
          }
        }
      }
    }
  }
 return numOfQuadruplets;
  }
}