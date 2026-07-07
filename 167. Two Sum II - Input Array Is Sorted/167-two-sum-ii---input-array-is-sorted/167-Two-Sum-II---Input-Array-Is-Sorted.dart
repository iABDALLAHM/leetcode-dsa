class Solution {
  List<int> twoSum(List<int> numbers, int target) {

  List<int> result = [];
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if ((numbers[i] + numbers[j]) == target) {
        result.add(i + 1);
        result.add(j + 1);
        break;
      }
    }
  }
  return result;
  }
}