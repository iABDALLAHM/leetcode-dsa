1class Solution {
2  void merge(List<int> nums1, int m, List<int> nums2, int n) {
3      int pointer1 = 0;
4  for (int i = 0; i < nums1.length; i++) {
5    if (i >= m) {
6      if (nums1[i] == 0) {
7        nums1[i] = nums2[pointer1];
8        pointer1++;
9      }
10    }
11  }
12  nums1.sort();
13
14  
15  }
16}