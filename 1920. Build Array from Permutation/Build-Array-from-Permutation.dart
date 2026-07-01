1class Solution {
2  List<int> buildArray(List<int> nums) {
3    List<int> newList = List.filled(nums.length, 0);
4
5    for (int i = 0; i < newList.length; i++) {
6    newList[i] = nums[nums[i]];
7    }
8   return newList;
9  }
10}