class Solution {
  bool canBeEqual(List<int> target, List<int> arr) {
  arr.sort();
  target.sort();

  bool result = true;
  for (int i = 0; i < target.length; i++) {
    if (target[i] != arr[i]) {
      result = false;
    }
  }

  return result;

  }
}