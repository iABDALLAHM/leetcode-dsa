1class Solution {
2  void duplicateZeros(List<int> arr) {
3      for (int i = 0; i < arr.length; i++) {
4    if (arr[i] == 0) {
5      arr.insert(i + 1, 0);
6      arr.removeLast();
7      i++;
8    }
9  }
10  }
11}