class Solution {
  List<int> distinctDifferenceArray(List<int> nums) {
      List<int> result = List.filled(nums.length, 0);
  Set<int> setOfPrefixEle = {};
  Set<int> setOfSuffixEle = {};
  for (int i = 0; i < nums.length; i++) {
    setOfPrefixEle.add(nums[i]);
    for (int j = i + 1; j < nums.length; j++) {
      setOfSuffixEle.add(nums[j]);
    }
    result[i] = (setOfPrefixEle.length - (setOfSuffixEle.length));
    setOfSuffixEle = {};
  }

  return result;

  }
}