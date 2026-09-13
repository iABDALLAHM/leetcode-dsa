class Solution {
  List<int> findPeaks(List<int> mountain) {
      List<int> result = [];
  for (int i = 1; i < mountain.length - 1; i++) {
    if (mountain[i] > mountain[i - 1] && mountain[i] > mountain[i + 1]) {
      result.add(i);
    }
  }
  return result;
  }
}