class Solution {
  int getCommon(List<int> nums1, List<int> nums2) {

    Set setNums1 = nums1.toSet();

  int minValue = 999999999999999999;

  for (int i = 0; i < nums2.length; i++) {
    if (setNums1.contains(nums2[i])) {
      if (nums2[i] < minValue) {
        minValue = nums2[i];
      }
    }
  }


  return minValue == 999999999999999999 ? -1 : minValue;

  }
}
