class Solution {
  int largestAltitude(List<int> gain) {
      int maxHigh = 0;
  int start = 0;

  for (int i = 0; i < gain.length; i++) {
    start += gain[i];
    if (start > maxHigh) {
      maxHigh = start;
    }
  }

  return maxHigh;

  }
}