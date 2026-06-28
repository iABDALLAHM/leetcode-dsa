1class Solution {
2  bool isIsomorphic(String s, String t) {
3      Map<String, String> mapS = {};
4  Map<String, String> mapT = {};
5
6  for (int i = 0; i < s.length; i++) {
7    var charS = s[i];
8    var charT = t[i];
9
10    if (mapS.containsKey(charS)) {
11      if (mapS[charS] != charT) {
12        return false;
13        break;
14      }
15    } else {
16      mapS[charS] = charT;
17    }
18
19    if (mapT.containsKey(charT)) {
20      if (mapT[charT] != charS) {
21        return false;
22        break;
23      }
24    } else {
25      mapT[charT] = charS;
26    }
27  }
28  return true;
29
30  }
31}