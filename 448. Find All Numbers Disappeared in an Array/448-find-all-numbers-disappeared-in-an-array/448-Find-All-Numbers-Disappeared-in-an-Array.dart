class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    nums.sort();

    Set<int> numbersSet = {};

    for (int i = 0; i < nums.length; i++) {
    numbersSet.add(nums[i]);
    }

    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
     if (!numbersSet.contains(i + 1)) {
      result.add(i + 1);
    }
    
    }
    return result;
  }
}
