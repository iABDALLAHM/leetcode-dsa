class Solution {
  List<int> getSneakyNumbers(List<int> nums) {
    
  Map<int, int> mapOfNumbersInDigitVille = {};

  List<int> listOfsneakedNums = [];

  for (int i = 0; i < nums.length; i++) {
    if (mapOfNumbersInDigitVille.containsKey(nums[i])) {
      mapOfNumbersInDigitVille[nums[i]] =
          mapOfNumbersInDigitVille[nums[i]]! + 1;
    } else {
      mapOfNumbersInDigitVille[nums[i]] = 1;
    }
  }
  print(mapOfNumbersInDigitVille);

  mapOfNumbersInDigitVille.forEach((key, value) {
    if (value == 2) {
      listOfsneakedNums.add(key);
    }
  });

  return listOfsneakedNums;

  }
}