1class Solution {
2  String getEncryptedString(String s, int k) {
3      var listOfS = s.split("");
4
5  for (int i = 0; i < listOfS.length; i++) {
6    listOfS[i] = s[(k + i) % s.length];
7  }
8  return listOfS.join();
9  }
10}