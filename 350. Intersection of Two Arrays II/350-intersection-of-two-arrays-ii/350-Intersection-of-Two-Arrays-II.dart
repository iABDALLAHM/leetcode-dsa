class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> numsMap = {};
    List<int> result = [];

  for (var num in nums1) {
    if (numsMap.containsKey(num)) {
      numsMap[num] = numsMap[num]! + 1;
    } else {
      numsMap[num] = 1;
    }
  }



  for (var num in nums2) {
    if (numsMap.containsKey(num) && numsMap[num]! > 0) {
      result.add(num);
      numsMap[num] = numsMap[num]! - 1;
    }
  }

  return result;

  }
}
