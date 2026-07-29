class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
  List<int> result = [];
  for (int i = 0; i < nums1.length; i++) {
    bool found = false;
    for (int j = 0; j < nums2.length; j++) {
      if (nums1[i] == nums2[j]) {
        for (int k = j + 1; k < nums2.length; k++) {
          if (nums2[k] > nums2[j]) {
            result.add(nums2[k]);
            found = true;
            break;
          }
        }
        break;
      }
    }
    if (!found) {
      result.add(-1);
    }
  }
  return result;
  }
}