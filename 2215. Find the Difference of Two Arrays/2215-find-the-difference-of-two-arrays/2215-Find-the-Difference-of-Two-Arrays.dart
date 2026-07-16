class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  Set<int> setNums1 = {};
  Set<int> setNums2 = {};
  for (int i = 0; i < nums1.length; i++) {
    setNums1.add(nums1[i]);
  }
  print(setNums1);

  for (int i = 0; i < nums2.length; i++) {
    setNums2.add(nums2[i]);
  }
  print(setNums2);

  List<int> listNums1 = [];
  List<int> listNums2 = [];
  List<List<int>> finalResult = [];

  for (int i = 0; i < nums1.length; i++) {
    if (!setNums2.contains(nums1[i]) && !listNums1.contains(nums1[i])) {
      listNums1.add(nums1[i]);
    }
  }
  print(listNums1);

  for (int i = 0; i < nums2.length; i++) {
    if (!setNums1.contains(nums2[i]) && !listNums2.contains(nums2[i])) {
      listNums2.add(nums2[i]);
    }
  }
  print(listNums2);

  finalResult.add(listNums1);
  finalResult.add(listNums2);

  return finalResult;

  }
}