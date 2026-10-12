class Solution {
  List<int> constructTransformedArray(List<int> nums) {
    
  List<int> result = List.filled(nums.length, 0);
  int n = nums.length;
  for (int i = 0; i < nums.length; i++) {
    result[i] = nums[((i + nums[i]) % n + n) % n];
  }

  return result;

  }
}