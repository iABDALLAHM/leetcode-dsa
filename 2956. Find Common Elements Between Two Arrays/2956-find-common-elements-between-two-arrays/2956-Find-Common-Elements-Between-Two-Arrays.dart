class Solution {
  List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
      int answer1 = 0;
  for (int i = 0; i < nums1.length; i++) {
    if (nums2.contains(nums1[i])) {
      answer1++;
    }
  }

  int answer2 = 0;
  for (int j = 0; j < nums2.length; j++) {
    if (nums1.contains(nums2[j])) {
      answer2++;
    }
  }
  return [answer1, answer2];
  }
}