class Solution {
  bool canMakeArithmeticProgression(List<int> arr) {
      arr.sort();

  int difference = arr[1] - arr[0];

  for (int i = 1; i <= arr.length - 1; i++) {
    if ((arr[i] - arr[i - 1]) != difference) {
      return false;
    }
  }
  return true;
  }
}