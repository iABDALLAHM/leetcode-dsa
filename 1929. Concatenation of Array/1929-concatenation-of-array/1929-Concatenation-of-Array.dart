class Solution {
  List<int> getConcatenation(List<int> nums) {
      List<int> answer = List.filled(nums.length * 2, 0);

  for (int i = 0; i < nums.length; i++) {
    answer[i] = nums[i];
    answer[i + nums.length] = nums[i];
  }
  return answer;
  }
}