1class Solution {
2  int finalValueAfterOperations(List<String> operations) {
3    int x = 0;
4  
5  for (int i = 0; i < operations.length; i++) {
6    if (operations[i].contains("++")) {
7      x++;
8    } else if (operations[i].contains("--")) {
9      --x;
10    }
11  }
12
13  return x;
14  }
15}