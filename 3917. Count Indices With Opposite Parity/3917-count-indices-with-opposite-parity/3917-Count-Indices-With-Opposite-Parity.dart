class Solution {
  List<int> countOppositeParity(List<int> nums) {
    
  List<int> result = [];

  for (int i = 0; i < nums.length; i++) {
    int numOfRightTargetElement = 0;

    for (int j = i+1; j < nums.length; j++) {
      if (nums[i] % 2 == 0) {
        if (nums[j] % 2 != 0) {
          numOfRightTargetElement++;
        }
      } else if (nums[i] % 2 != 0) {
        if (nums[j] % 2 == 0) {
          numOfRightTargetElement++;
        }
      }
    }
    result.add(numOfRightTargetElement);
  }
  return result;
  }
}