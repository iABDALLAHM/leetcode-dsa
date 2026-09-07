class Solution {
  int findKthPositive(List<int> arr, int k) {
     int i = 1;
  int missNum = 0;

  while (true) {
    if (!arr.contains(i)) {
      missNum++;
    }

    if (missNum == k) {
     return i;
      break;
    }

    i++;
    
  } 
  }
}