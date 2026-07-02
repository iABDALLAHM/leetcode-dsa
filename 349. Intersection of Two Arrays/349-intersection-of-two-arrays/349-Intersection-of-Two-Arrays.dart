class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {

  Map<int, bool> myMap = {};

  for (int num in nums1) {
    myMap[num] = false;
  }

  for (int num in nums2) {
    if (myMap.containsKey(num)) {
      myMap[num] = true;
    }
  }

  List<int> result = [];

  myMap.forEach((key, value) {
    if (value == true) {
      result.add(key);
    }
  });

  return result;

  }
}
