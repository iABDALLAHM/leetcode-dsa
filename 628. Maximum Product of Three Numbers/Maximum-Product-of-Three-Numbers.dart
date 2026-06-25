1class Solution {
2  int maximumProduct(List<int> nums) {
3nums.sort();   // نرتب المصفوفة
4
5    int n = nums.length;
6
7    // الخيار 1: آخر 3 أرقام (الأكبر 3)
8    int option1 = nums[n-1] * nums[n-2] * nums[n-3];
9
10    // الخيار 2: أول 2 (سالبين) + آخر رقم
11    int option2 = nums[0] * nums[1] * nums[n-1];
12
13    // نرجع الأكبر من الاتنين
14    return option1 > option2 ? option1 : option2;
15  }
16}