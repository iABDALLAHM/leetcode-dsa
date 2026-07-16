class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {


  List<int> listNums1 = [];
  List<int> listNums2 = [];
  List<List<int>> finalResult = [];

  for (int i = 0; i < nums1.length; i++) {
    if (!nums2.contains(nums1[i]) && !listNums1.contains(nums1[i])) {
      listNums1.add(nums1[i]);
    }
  }

  for (int i = 0; i < nums2.length; i++) {
    if (!nums1.contains(nums2[i]) && !listNums2.contains(nums2[i])) {
      listNums2.add(nums2[i]);
    }
  }

  finalResult.add(listNums1);
  finalResult.add(listNums2);

  return finalResult;

  }
}
