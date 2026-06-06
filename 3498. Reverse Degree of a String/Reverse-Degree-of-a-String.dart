1class Solution {
2  int reverseDegree(String s) {
3    
4  int result = 0;
5  
6  for (int i = 0; i < s.length; i++) {
7
8    var reversedValue = ("z".codeUnitAt(0) - s[i].codeUnitAt(0)) + 1;
9    print("reversedValue $reversedValue");
10
11    result += reversedValue * (i + 1);
12    print("result $result");
13  }
14
15  return result;
16  }
17}