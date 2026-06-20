1class Solution {
2  int findContentChildren(List<int> g, List<int> s) {
3g.sort();
4s.sort();
5
6    int numOfAssignChildren = 0;
7
8    int pointerG = 0;
9    int pointerS = 0;
10
11    while (pointerS < s.length && pointerG < g.length) {
12      if (s[pointerS] >= g[pointerG]) {
13       numOfAssignChildren++;
14       pointerG++;
15    }
16     pointerS++;
17    }
18
19    return numOfAssignChildren;
20
21
22  }
23}