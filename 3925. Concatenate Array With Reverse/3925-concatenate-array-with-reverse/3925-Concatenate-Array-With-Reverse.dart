class Solution {
  List<int> concatWithReverse(List<int> nums) {

    List<int> result = [];
    result = nums + nums.reversed.toList();

  return result;

  }
}