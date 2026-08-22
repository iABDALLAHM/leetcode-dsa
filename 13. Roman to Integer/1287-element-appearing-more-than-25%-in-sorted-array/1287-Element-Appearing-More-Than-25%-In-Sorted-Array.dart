class Solution {
  int findSpecialInteger(List<int> arr) {
     int count = 1;
  int prev = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] == prev) {
      count++;
      print("the count here is $count");
      if (count > arr.length / 4) {
        return prev;
      }
    } else if (arr[i] != prev) {
      prev = arr[i];
      print("the prev here is $prev");
      count = 1;
      print("the count here is $count");
    }
  }
  return arr[0];
  }
}