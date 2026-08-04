class Solution {
  int minimumOperations(List<int> nums) {
      Set<int> setOfNumbers = nums.toSet();

  print(setOfNumbers);
  int counter = 0;
  for (var ele in setOfNumbers) {
    if (ele != 0) {
      counter++;
    }
  }

  return counter;

  }
}