class Solution {
  List<int> findMissingElements(List<int> nums) {
      nums.sort();
  Set<int> setOfNums = nums.toSet();
  int pointer1 = nums[0];
  int pointer2 = nums[nums.length - 1];
  List<int> missing = [];

  for (int i = pointer1; i < pointer2; i++) {
    if (!setOfNums.contains(i)) {
      missing.add(i);
    }
  }

  return missing;

  }
}