class Solution {
  List<int> replaceElements(List<int> arr) {
      for (int i = 0; i < arr.length; i++) {
    int maxElement = -1;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] > maxElement) {
        maxElement = arr[j];
      }
    }
    arr[i] = maxElement;
  }
  return arr;
  }
}