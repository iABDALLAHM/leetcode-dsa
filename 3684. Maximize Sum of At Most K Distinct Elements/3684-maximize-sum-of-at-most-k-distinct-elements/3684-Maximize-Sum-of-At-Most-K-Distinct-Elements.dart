class Solution {
  List<int> maxKDistinct(List<int> nums, int k) {
     nums.sort();

  Set<int> setOfNums = nums.toSet();
  print(setOfNums);
  List<int> listOfNums = setOfNums.toList();
  listOfNums.sort((a, b) => b.compareTo(a));
  print(listOfNums);
  int countOfElements = min(k, listOfNums.length);
  return listOfNums.sublist(0, countOfElements);
  }
}