class Solution {
  List<int> constructTransformedArray(List<int> nums) {
    
  List<int> result = List.filled(nums.length, 0);
  int n = nums.length;
  for (int i = 0; i < nums.length; i++) {
    int newIndex = (i + nums[i]) % n;
    if (newIndex < 0) {
      newIndex += n;
    }
    result[i] = nums[newIndex];
  }

  return result;

  }
}