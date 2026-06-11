1class Solution {
2  int minimumRecolors(String blocks, int k) {
3    int minimumNumOfOperation = k;
4
5  int wIteration = 0;
6
7  String window = "";
8  for (int i = 0; i <= blocks.length - k; i++) {
9    window = blocks.substring(i, i + k).toLowerCase();
10
11
12    wIteration = 0;
13
14    for (int j = 0; j < window.length; j++) {
15      if (window[j] == "w") {
16        wIteration++;
17      }
18    }
19
20    if (minimumNumOfOperation > wIteration) {
21      minimumNumOfOperation = wIteration;
22    }
23  }
24  return minimumNumOfOperation;
25  }
26}