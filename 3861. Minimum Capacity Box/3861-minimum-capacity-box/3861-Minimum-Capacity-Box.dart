class Solution {
  int minimumIndex(List<int> capacity, int itemSize) {
  int smallestCapacityIndex = -1;
  int minimumCapacity = 9999999999999;

  for (int i = 0; i < capacity.length; i++) {
    if (capacity[i] >= itemSize) {
      if (capacity[i] < minimumCapacity) {
        minimumCapacity = capacity[i];
        smallestCapacityIndex = i;
      }
    }
  }

  return smallestCapacityIndex;

  }
}