class Solution {
  int countKeyChanges(String s) {
      var stringS = s.toLowerCase();
  int counter = 0;
  for (int i = 0; i < stringS.length; i++) {
    if (i > 0 && stringS[i] != stringS[i - 1]) {
      counter++;
    }
  }
  return counter;
  }
}

this
//2678. Number of Senior Citizens
