class Solution {
  int getCommon(List<int> nums1, List<int> nums2) {
      Set setNums1 = {};
  Set setNums2 = {};

  for (int i = 0; i < nums1.length; i++) {
    setNums1.add(nums1[i]);
  }

  for (int i = 0; i < nums2.length; i++) {
    setNums2.add(nums2[i]);
  }

  print(setNums2);
  print(setNums1);

  int minValue = 999999999999999999;

  for (int i = 0; i < nums1.length; i++) {
    if (setNums1.contains(nums1[i]) && setNums2.contains(nums1[i])) {
      if (nums1[i] < minValue) {
        minValue = nums1[i];
      }
    }
  }

 if(minValue==999999999999999999){
    return -1;
 }else {
    return minValue;
 }

  }
}
