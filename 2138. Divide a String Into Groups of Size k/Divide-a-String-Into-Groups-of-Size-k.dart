1class Solution {
2  List<String> divideString(String s, int k, String fill) {
3     List<String> result = [];
4
5  for (int i = 0; i < s.length; i += k) {
6    String oneGroup = s.substring(i, i + k > s.length ? s.length : i + k);
7
8    while (oneGroup.length < k) {
9      oneGroup += fill;
10    }
11
12    result.add(oneGroup);
13  }
14
15  return result;
16  }
17}